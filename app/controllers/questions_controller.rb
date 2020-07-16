class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = Question.new
    @question.choices.build
  end

  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to root_path
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy
    
  end
  private

  def question_params
    params.require(:question).permit(:quiz,:correct,:explain_sentence, choices_attributes:[:id,:choice_a,:choice_b,:choice_c,:choice_d])
  end
end
