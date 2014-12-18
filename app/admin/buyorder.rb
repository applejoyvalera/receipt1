ActiveAdmin.register Buyorder do 
	controller do
		def permitted_params
			params.permit!
		end
	end

	filter :customer
	filter :item
	filter :data
	filter :quantity
		
	index do
		column :customer
		column :item
		column :data
		column :quantity
		actions
	end

	form do |t|
		t.inputs "Buyorders" do
			t.inputs :customer
			t.inputs :item
			t.inputs :data
			t.inputs :quantity
		end
		t.actions
	end
	show do |ad|
		attributes_table do
			row :customer
			row :item
			row :data
			row :quantity
		end
	end
end