class CustomersController < ApplicationController
	def index
		@customer = Customer.all
	end
	def new
		@customer = Customer.new
	end
	def create
		@customer = Customer.new(customer_params)

		if @customer.save
			redirect_to customers_path
		else
			render "new"
		end
	end
	def show
		@customer = Customer.find(params[:id])
	end
	def edit
		@customer = Customer.find(params[:id])
	end
	def update
		@customer = Customer.find(params[:id])

		if @customer.update_attributes(customer_params)
			redirect_to customer_path
		else
			render "edit"
		end
	end
	def destroy
		@customer = Customer.find(params[:id])
		@customer.destroy
		redirect_to customers_path
	end
	def customer_params
		params.require(:customer).permit!
	end
end