class SAnswersController < ApplicationController
  def index
    @technologies = Technology.all
  end

  def new
    @technologies = Technology.all

  end

  private
  def answer_params
    params.require(:answer).permit(:shortcut, :snippet, :explain)
  end
end
