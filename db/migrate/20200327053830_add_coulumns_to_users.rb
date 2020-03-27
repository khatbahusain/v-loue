class AddCoulumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :verified?, :boolean, null: true, default: false
    add_column :users, :is_admin?, :boolean, null: true, default: false
    add_column :users, :adresse, :string, null: true, default: " "
    add_column :users, :city_id, :string, null: true, default: " "
  end
end
