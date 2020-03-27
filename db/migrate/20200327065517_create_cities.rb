class CreateCities < ActiveRecord::Migration[6.0]
  def change
    change_table :cities do |t|
      t.string   :name,        null: false
      t.string   :code_postal,   null: false

    end
  end
end
