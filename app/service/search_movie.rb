# Voici ton programme

# Appelle la gem dotenv
require 'dotenv'
require 'themoviedb'
# Ceci appelle le fichier .env grâce à la gem dotenv, et enregistre toutes les données enregistrées dans une hash ENV
Dotenv.load
# Il est très facile d'appeler les données sensibles du fichier .env, par exemple là je vais afficher TWITTER_API_SECRET
Tmdb::Api.key(ENV["CLE_API_MOVIES"])

class Search_movie
	# frozen_string_literal: true
  attr_accessor :array
  def initialize(name_movie)
    @array = Tmdb::Movie.find(name_movie)
  end
  
end