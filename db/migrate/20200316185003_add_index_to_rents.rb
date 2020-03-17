class AddIndexToRents < ActiveRecord::Migration[6.0]
  def change
    change_table :rents do |t|
      t.belongs_to :user, index: true
    end
  end
end
