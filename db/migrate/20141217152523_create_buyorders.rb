class CreateBuyorders < ActiveRecord::Migration
  def change
    create_table :buyorders do |t|
      t.integer :customer_id
      t.integer :item_id
      t.date :data
      t.integer :quantity

      t.timestamps
    end
  end
end
