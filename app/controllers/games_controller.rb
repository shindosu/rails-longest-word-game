class GamesController < ApplicationController
  def new
    @arr = ("a".."z").to_a
    @letters = []
    10.times do
      @letters << @arr.sample 
    end
    @letters
  end

  def score
    @url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    @read_url = open(@url).read
    @validate = JSON.parse(@read_url)
    @grid = params[:grid]
  end
end
