# frozen_string_literal: true

class QuestionsController < ApplicationController
  def home; end

  def ask; end

  def answer
    @question = ''

    @question = params[:question] if params[:question]
  end
end
