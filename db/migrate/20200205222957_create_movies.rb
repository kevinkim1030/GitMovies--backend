class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.string :description
      t.string :rating
      t.string :image

      t.timestamps
    end
  end
end
