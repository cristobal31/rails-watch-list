class BookmarksController < ApplicationController
before_action :set_movies, only: [:show, :edit, :update, :destroy]

  def index
    @movies = movies.all
  end

  def show
  end

  def new
    @movies = Bookmarks.new
  end

  def create
    @movies = Bookmarks.new(movies_params)
    @movies.save
    redirect_to movies_path(@movies)
  end

  def update
    @movies.update(movies_params)
    redirect_to movies_path(@movies)
  end

  def destroy
    @movies.destroy
    redirect_to movies_path, status: :see_other
  end

  private

  def set_movies
    @movies = Movies.find(params[:id])
  end

  def movies_params
    params.require(:movies).permit(:name)
  end
end
