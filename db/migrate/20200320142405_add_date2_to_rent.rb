class AddDate2ToRent < ActiveRecord::Migration[6.0]
  def change
    add_column :rents, :date_end, :datetime
  end
end
