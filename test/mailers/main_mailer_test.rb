require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_author" do
    question = Question.create(question: 'How are you?', email: 'a@b.com')
    answer = Answer.create(answer: 'How are you?', email: 'x@y.zom')
    question.answers << answer

    mail = MainMailer.notify_question_author(answer)
    assert_equal "New answer for your question", mail.subject
    assert_equal [question.email], mail.to
    assert_equal [answer.email], mail.from
    assert_match answer.answer, mail.body.encoded
  end

end
