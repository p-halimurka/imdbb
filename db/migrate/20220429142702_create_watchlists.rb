class CreateWatchlists < ActiveRecord::Migration[6.1]
  def change
    create_table :watchlists do |t|
      t.references :user
      t.references :movie
      t.timestamps
    end
    add_foreign_key :watchlists, :users, column: :user_id
    add_foreign_key :watchlists, :movies, column: :movie_id
    add_index :watchlists, [:user_id, :movie_id], unique: true
  end
end
