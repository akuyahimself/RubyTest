class QuestionsController < ApplicationController
=begin
  skip_before_action :verify_authenticity_toke
=end

  before_action :set_question, only: %i[update show destroy edit]

  def create
    question = Question.create(init_params)

    flash[:notice] = "Your question has been created."

    redirect_to question_path(question), notice: "Your question has been created."

  end
  def update
    @question.update(init_params)
    redirect_to question_path(@question), notice: "Your question has been updated."

  end

  def destroy
    @question.destroy

    redirect_to questions_path, notice: "Your question has been deleted."

  end

  def show
  end

  def index
    @questions = Question.all
    @question = Question.new
  end

  def new
    @question = Question.new

  end

  def edit

  end

  private

  def init_params
    params.require(:question).permit(:body, :user_id)
  end
  def set_question
    @question = Question.find(params[:id])

  end
end