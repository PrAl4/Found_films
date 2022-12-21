class QuestionsController < ApplicationController
  def create
    
  end

  def index
    @questions = Question.all
  end
  
end
