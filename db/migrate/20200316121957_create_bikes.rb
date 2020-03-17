class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :more_info
      t.belongs_to :user, index: true
      t.timestamps
    end

  end
end
