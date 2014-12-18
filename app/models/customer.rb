class Customer < ActiveRecord::Base
	has_many :items
	has_many :buyorders
	validates :name, :presence => true, :uniqueness => true
	validates :address, :presence => true
	validates :business, :presence => true
	def to_s
		"test"
	end

	def empty?
	end
end
