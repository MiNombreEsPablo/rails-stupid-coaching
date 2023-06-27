# frozen_string_literal: true

class QuestionsController < ApplicationController
  def home; end

  def ask; end

  def answer
    @question = params[:question]
    @reply = coach_answer_enhanced(@question)
  end

  private

  def coach_answer(your_message)
    if your_message.capitalize == 'I am going to work right now!'
      'See you there.'
    elsif your_message[-1] == '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == your_message.upcase
      "I can feel your motivation! #{coach_answer(your_message)}"
    else
      coach_answer(your_message)
    end
  end
end
