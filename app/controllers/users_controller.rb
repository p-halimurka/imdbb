class UsersController < ApplicationController
  def watchlists
    @user = current_user
    @watchlist_of_user = @user.watchlists
    @movies_ids = @watchlist_of_user.map {|w| w.movie_id}
    @watchlist_movies = Movie.select {|m| @movies_ids.include?(m.id)}
  end
end
