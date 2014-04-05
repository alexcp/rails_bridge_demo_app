class Comment < ActiveRecord::Base
	belongs_to :post
	validates :author, :text, :presence => true
end
