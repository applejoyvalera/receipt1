class BuyordersController < ApplicationController
	def index
		@buyorders = Buyorder.all
	end
	def new 
		@buyorder = Buyorder.new
	end
	def create
		@buyorder = Buyorder.new(buyorder_params)

		if @buyorder.save
			redirect_to buyorder_path(@buyorder.id)
		else
			render "new"
		end
	end
	def show 
		@buyorder = Buyorder.find(params[:id])
		@items = Item.all
		@customers = Customer.all
		@buyorders = Buyorder.all
	end
	def edit
		@buyorder = Buyorder.find(params[:id])
	end
	def update
		@buyorder = Buyorder.find(params[:id])

		if @buyorder.update_attributes(buyorder_params)
			redirect_to buyorders_path
		else
			render "edit"
		end
	end
	def destroy
		@buyorder = Buyorder.find(params[:id])
		@buyorder.destroy
		redirect_to buyorders_path
	end
	def buyorder_params
		params.require(:buyorder).permit!
	end
end