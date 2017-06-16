# Preview all emails at http://localhost:3000/rails/mailers/main_mailer
class MainMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/main_mailer/notify_question_author
  def notify_question_author
    question = Question.create(question: 'How are you?', email: 'a@b.com')
    answer = Answer.create(answer: 'How are you?', email: 'x@y.zom')
    question.answers << answer

    MainMailer.notify_question_author(answer)
  end

end
