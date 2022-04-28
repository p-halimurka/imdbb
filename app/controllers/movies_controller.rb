class MoviesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    
    @movies = Movie.page params[:page]
    @categories = Category.all
    
    respond_to do | format |
      format.html
      format.js
      format.xml { render :xml => @movies}
      format.json { render :json => @movies}
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, category_ids: [])
  end
end
