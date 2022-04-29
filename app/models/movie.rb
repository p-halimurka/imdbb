class Movie < ApplicationRecord
  ratyrate_rateable "rating_value"
  has_many :movie_categories, dependent: :destroy
  has_many :categories, through: :movie_categories, source: :category
  paginates_per 3
  has_many :watchlists
end
