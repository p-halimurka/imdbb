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

  def watchlist
    @user = current_user
    @movie = Movie.find(params[:id])
    begin
      @watchlist = Watchlist.create(user_id: @user.id, movie_id: @movie.id )
    rescue => exception
    end
    if @watchlist.nil? == false
      flash[:success] = "Movie has been added to watchlist"
      redirect_to watchlists_user_path(@user.id)
    else
      flash[:alert] = "Movie is already in your watchlist"
      redirect_back(fallback_location: root_path)
    end
  end

  def unwatchlist
    @user = current_user
    @movie = Movie.find(params[:id])
    @watchlist = Watchlist.find_by(user_id: @user.id, movie_id: @movie.id)
    if @watchlist.destroy
      flash[:success] = "Movie has been deleted from your watchlist"
      redirect_to watchlists_user_path(@user.id)
    else 
      flash[:alert] = "An error occurred"
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, category_ids: [])
  end
end
