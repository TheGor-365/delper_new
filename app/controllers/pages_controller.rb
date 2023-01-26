class PagesController < ApplicationController
  def terms
    @technologies = Technology.all
  end

  def about
    @technologies = Technology.all
  end
end
