# Voici ton programme

# Appelle la gem dotenv
require 'dotenv'
require 'themoviedb'
Dotenv.load
Tmdb::Api.key(ENV["CLE_API_MOVIES"])

class Search_movie
	# frozen_string_literal: true
  attr_accessor :hash, :array_movie, :array_director, :array_crew
  def initialize(name_movie)
    @name=name_movie
    @array_crew=[]
    @array_director = []
    @array_movie = []
    @hash=[]
  end
  
  def perform
    @array_movie = Tmdb::Movie.find(@name)[0..19]
    @array_movie.each {|movie| @array_crew<< Tmdb::Movie.crew(movie.id).select {|crew| crew["job"] == "Director"}[0]}
    @array_crew.each {|director| if director; @array_director << director['name'] else @array_director << 'Non renseigné' end}
    @hash = @array_director.zip(@array_movie).map{|director, movie| {director: director, movie: movie}}
  end
end