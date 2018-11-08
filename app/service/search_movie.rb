# Voici ton programme

# Appelle la gem dotenv
require 'dotenv'
require 'themoviedb'
Dotenv.load
Tmdb::Api.key(ENV["CLE_API_MOVIES"])

class Search_movie
	# frozen_string_literal: true
  attr_accessor :array
  def initialize(name_movie)
    @array = Tmdb::Movie.find(name_movie)
  end
  
end