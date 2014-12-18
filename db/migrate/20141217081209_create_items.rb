class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :itemname
      t.string :unit
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
