class Product < ActiveRecord::Base
	validates :title, :description, :image_url, :presence =>true
	validates :title, :uniqueness =>true
	has_many :line_items
end
