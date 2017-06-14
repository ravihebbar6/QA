class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.order(created_at: :desc)
  end

  def create
    if Question.create!(email: params[:email], question: params[:question])
      redirect_to questions_path
    end
  end
end
