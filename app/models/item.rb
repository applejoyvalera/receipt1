class Item < ActiveRecord::Base
	belongs_to :customer
	validates :itemname, :presence => true, :uniqueness => true
	validates :unit, :presence => true
	validates :quantity, :presence => true
	validates :price, :presence => true
	def to_s
		itemname
	end
end
