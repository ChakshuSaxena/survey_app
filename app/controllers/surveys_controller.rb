class SurveysController < ApplicationController
  def new
    @survey = Survey.first # or find by params if you have multiple surveys
  end

  def create
    survey = Survey.find(params[:survey_id])
    yes_answer_ids = survey.questions.joins(:answers).where(answers: { title: 'Yes' }).pluck('answers.id')

    params[:responses].each do |question_id, answer_id|
      UserResponse.create(survey: survey, question_id: question_id, answer_id: answer_id)
    end

    #********** Calculate current run rating**************
    yes_count = UserResponse.where(survey: survey, answer_id: yes_answer_ids).count
    total_questions = survey.questions.count
    current_rating = (100.0 * yes_count / total_questions).round(2)

    # *****************Calculate average rating***************
    all_responses = UserResponse.where(survey: survey)
    total_yes_answers = all_responses.where(answer_id: yes_answer_ids).count
    total_questions_answered = (all_responses.count.to_f / total_questions).to_f
    average_rating = (100.0 * total_yes_answers / (total_questions_answered * total_questions)).round(2)

    flash[:notice] = "Response submitted! Current rating: #{current_rating}%, Average rating: #{average_rating}%"

    redirect_to new_survey_path
  end
end
