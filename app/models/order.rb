class Order < ActiveRecord::Base
	validates :date, :presence => true
	belongs_to :customer
	validates :customer_id, :presence => true
	belongs_to :item
	validates :itemname_id, :presence => true
	validates :quantity, :presence => true 
	def to_s
		customer
	end
end 
