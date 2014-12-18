ActiveAdmin.register Buyorder do 
	controller do
	def permitted_params
		params.permit!
		end
	end

	filter :customer_id
	filter :item_id
	filter :data
	filter :quantity
		
	index do
		column :customer_id
		column :item_id
		column :data
		column :quantity
		actions
	end

	form do |t|
		t.inputs "Buyorders" do
			t.inputs :customer_id
			t.inputs :item_id
			t.inputs :data
			t.inputs :quantity
		end
		t.actions
	end
	show do |ad|
		attributes_table do
			row :customer_id
			row :item_id
			row :data
			row :quantity
		end
	end
end