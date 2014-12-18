class DeleteNameIdFromOrders < ActiveRecord::Migration
  def change
  	delte_column(:orders,:name_id,:string)
  end
end
