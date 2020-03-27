class Chang2CityInUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :city_id
    add_column :users, :city, :string
  end
end
