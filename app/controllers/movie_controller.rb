class MovieController < ApplicationController
  def index


  end

  def show
    @name = params[:anything][:name]
    @movies = Search_movie.new(@name).array
    if @movies == []
      redirect_to root_path, :flash => { :error => "Pas de film contenant ton (tes) mot(s) clé(s), réessaye" }
    end
  end

end
