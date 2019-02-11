class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    if @answer == 'I am going to work'
      @coach = 'Great!'
    elsif @answer.end_with?('?')
      @coach = 'Silly question, get dressed and go to work!'
    else
      @coach = 'I dont care, get dressed and go to work!'
    end
  end
end
