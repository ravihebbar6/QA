class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.order(created_at: :desc)
  end

  def create
    if Question.create!(question_params)
      session[:current_user_email] = question_params[:email]
      redirect_to questions_path
    end
  end

  private

  def question_params
    params.require(:question).permit(:email, :question)
  end
end
