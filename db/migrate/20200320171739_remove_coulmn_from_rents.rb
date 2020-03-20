class RemoveCoulmnFromRents < ActiveRecord::Migration[6.0]
  def change
    remove_column :rents, :cart_id
  end
end
