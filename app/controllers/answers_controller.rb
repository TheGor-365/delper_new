class AnswersController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @technology = Technology.find(params[:technology_id])
    @technologies = Technology.all
    @questions = @technology.questions.all
    @answers = @technology.questions.find(1).answers.all
  end

  def show
    @technologies = Technology.all
    @technology = Technology.find(params[:technology_id])
    @questions = @technology.questions.all
    @question = @technology.questions.find(1)
    @answer =  @technology.questions.find(params[:technology_id]).answers.find(params[:id])
  end

  def new
    @technologies = Technology.all
    @technology = Technology.find(params[:technology_id])

    @questions = @technology.questions.all
    @question = Question.find(1)
  end

  def create
    @technologies = Technology.all
    @technology = Technology.find(params[:technology_id])
    @technology.questions.find(1).answers.create(answer_params)

    redirect_to technology_answers_path(@technology)
  end

  def edit
    @technologies = Technology.all
    @technology = Technology.find(params[:technology_id])
    @questions = @technology.questions.all
    @question = Question.find(1)
    @answers = @technology.questions.find(1).answers
    @answer = @technology.questions.find(1).answers.find(params[:id])
  end

  def update
    @technology = Technology.find(params[:technology_id])
    @answers = @technology.questions.all
    @question = Question.find(1)

    if @technology.questions.find(1).answers.find(params[:id]).update(answer_params)
      redirect_to technology_answers_path(@question)
    else
      render action: 'edit'
    end
  end

  def destroy
    @technology = Technology.find(params[:technology_id])
    @questions = @technology.questions
    @technology.questions.find(1).answers.find(params[:id]).destroy

    redirect_to technology_answers_path
  end

  private
  def answer_params
    params.require(:answer).permit(:shortcut, :snippet, :explain)
  end
end
