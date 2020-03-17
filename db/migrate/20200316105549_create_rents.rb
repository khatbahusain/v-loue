class CreateRents < ActiveRecord::Migration[6.0]
  def change
    create_table :rents do |t|
      t.integer  :prix, default: 1, null: false
      t.boolean :payed, default: false
      t.timestamps
    end
  end
end

