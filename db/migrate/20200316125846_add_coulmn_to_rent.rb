class AddCoulmnToRent < ActiveRecord::Migration[6.0]
  def change
    add_column :rents, :bike_id, :integer
  end
end
