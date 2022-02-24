class AddCoordinatesToDreams < ActiveRecord::Migration[6.1]
  def change
    add_column :dreams, :latitude, :float
    add_column :dreams, :longitude, :float
  end
end
