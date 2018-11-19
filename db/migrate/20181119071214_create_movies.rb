class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :rank
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
