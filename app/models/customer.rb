class Customer < ActiveRecord::Base
	has_many :items
	validates :name, :presence => true, :uniqueness => true
	validates :address, :presence => true
	validates :business, :presence => true
	def to_s
		name
	end
end
