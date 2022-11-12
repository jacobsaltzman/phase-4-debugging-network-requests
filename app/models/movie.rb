class Movie < ApplicationRecord

  def create
    movie = Movie.create(movie_params)
    render json: movie, status: :created
  end
  
  private
  
  def movie_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end

end
