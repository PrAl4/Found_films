class QuestionsController < ApplicationController
  def software_params
    params.require(:software).permit(softwarename: [])
  end

  def new
    @software = Software.new
  end

  def create; end

  def index
    @questions = Question.all
  end
  
end
