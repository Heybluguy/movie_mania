class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    movie = Movie.new
  end


    private
      def movie_params
        params.require(:movie).permit(:title, :description)
      end
end