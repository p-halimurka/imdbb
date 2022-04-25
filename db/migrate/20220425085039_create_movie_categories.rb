class CreateMovieCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_categories do |t|
      t.references :movie
      t.references :category
      t.timestamps
    end

    add_foreign_key :movie_categories, :movies
    add_foreign_key :movie_categories, :categories
    add_index :movie_categories, [:movie_id, :category_id], unique: true
  end
end
