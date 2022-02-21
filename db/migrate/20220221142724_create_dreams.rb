class CreateDreams < ActiveRecord::Migration[6.1]
  def change
    create_table :dreams do |t|
      t.string :title
      t.text :description
      t.float :overall_rating
      t.integer :intensity
      t.float :price
      t.references :user, null: false, foreign_key: true
      t.references :mode, null: false, foreign_key: true

      t.timestamps
    end
  end
end
