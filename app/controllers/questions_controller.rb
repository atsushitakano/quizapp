class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to root_path
  end



  private

  def question_params
    params.require(:question).permit(:quiz,:explain_sentence)
  end
end
