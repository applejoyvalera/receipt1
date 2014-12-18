ActiveAdmin.register Item do 
	controller do
	def permitted_params
		params.permit!
		end
	end

	filter :itemname
	filter :unit
	filter :quantity
	filter :price
		
	index do
		column :itemname
		column :unit
		column :quantity
		column :price
		actions
	end

	form do |t|
		t.inputs "Items" do
			t.inputs :itemname
			t.inputs :unit
			t.inputs :quantity
			t.inputs :price
		end
		t.actions
	end
	show do |ad|
		attributes_table do
			row :itemname
			row :unit
			row :quantity
			row :price
		end
	end
end