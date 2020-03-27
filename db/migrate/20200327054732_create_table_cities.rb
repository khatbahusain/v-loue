class CreateTableCities < ActiveRecord::Migration[6.0]
  def change
    create_table :table_cities do |t|
      t.string   :name,        null: false
      t.string   :code_postal,   null: false
    end
  end
end
