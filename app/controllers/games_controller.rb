
require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

def score
    @letters = params[:l].split('')
    @word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    word_serialized = open(url).read
    word_json = JSON.parse(word_serialized)
    @work_checked = word_json["found"]
    @letters_hash = {}
    @letters_back.each do |letter|
      @letters_hash[letter].nil? ? @letters_hash[letter] = 0 : @letters_hash[letter] += 1
    end
  end
end
