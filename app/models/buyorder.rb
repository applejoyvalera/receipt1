class Buyorder < ActiveRecord::Base
	belongs_to :customer
	validates :customer, :presence => true
	belongs_to :item
	validates :item, :presence => true	
	validates :data, :presence => true
	validates :quantity, :presence => true 
	def to_s
		customer
	end
end
