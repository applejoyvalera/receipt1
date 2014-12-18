ActiveAdmin.register Customer do 
	controller do
		def permitted_params
			params.permit!
		end
	end

	filter :name
	filter :address
	filter :business
	
		
	index do
		column :name
		column :address
		column :business
		actions
	end

	form do |t|
		t.inputs "Customers" do
			t.inputs :name
			t.inputs :address
			t.inputs :business
		end
		t.actions
	end
end