class AddAddressToDreams < ActiveRecord::Migration[6.1]
  def change
    add_column :dreams, :address, :string
  end
end
