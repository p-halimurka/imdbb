class AddNewFieldsToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :title, :string
    add_column :movies, :description, :string
    add_column :movies, :category, :string
  end
end
