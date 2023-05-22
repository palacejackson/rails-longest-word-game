require "json"
require "open-uri"

class GamesController < ApplicationController
  def new
    # display a new random grid and a form.
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
    @letters
    # form will be submitted (with POST) to the score action.
  end

  def score
    @word = params[:word].downcase.split('')
    @letters = params[:letters].downcase.split
  end
end
