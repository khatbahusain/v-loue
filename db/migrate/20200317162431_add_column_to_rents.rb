class AddColumnToRents < ActiveRecord::Migration[6.0]
  def change
    change_table :rents do |t|
      t.belongs_to :cart, index: true
    end
  end
end
