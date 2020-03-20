class AddDateToRent < ActiveRecord::Migration[6.0]
  def change
    add_column :rents, :date_disponible, :datetime
  end
end
