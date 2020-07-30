class SLessonsController < ApplicationController
  def index
    @technologies = Technology.all
  end

  def new
    @technologies = Technology.all
  end
end
