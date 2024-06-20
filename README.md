# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

Approach -

1.  Add Models(Survey, Question, Answer, UserResponse)
2. Add Associations -
    Survey has many questions and user_responses
    questions has many answers
3. Add sample data in seed file and run rake db:seed

4. Create user_response when user select the answers and then clicked on submit button.
5. After user response is created, the calculate average rating and current rating based on number of user response having 'yes' answers and total number of questions.



