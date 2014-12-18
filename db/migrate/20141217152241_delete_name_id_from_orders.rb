class DeleteNameIdFromOrders < ActiveRecord::Migration
  def change
  	delete_column(:orders,:name_id,:string)
  end
end
