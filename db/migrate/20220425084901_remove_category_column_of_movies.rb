class RemoveCategoryColumnOfMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :category, :string
  end
end
