class MoviesController < ApplicationController

  def create
  end

  def index
    movies = Movie.all
    render json: movies
  end

end