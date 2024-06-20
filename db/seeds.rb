survey = Survey.create(title: 'Survey')

question1 = survey.questions.create(title: 'Do you like to play games?')
question1.answers.create([{ title: 'Yes' }, { title: 'No' }])

question2 = survey.questions.create(title: 'Do you like to read books?')
question2.answers.create([{ title: 'Yes' }, { title: 'No' }])

question3 = survey.questions.create(title: 'Do you enjoy coding?')
question3.answers.create([{ title: 'Yes' }, { title: 'No' }])

question4 = survey.questions.create(title: 'Have you watch movie with your family?')
question4.answers.create([{ title: 'Yes' }, { title: 'No' }])
