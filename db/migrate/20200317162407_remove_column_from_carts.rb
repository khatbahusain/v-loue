class RemoveColumnFromCarts < ActiveRecord::Migration[6.0]
  def change
    remove_column :carts, :rent_id
  end
end
