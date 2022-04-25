class AddCategoryIdsColumnToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :category_ids, :text, array: true, default: []
  end
end
