class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :gender
      t.boolean :censorship
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
