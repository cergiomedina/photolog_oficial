class Comment < ActiveRecord::Base
	belongs_to :post
	belongs_to :user
	validate :body, presence: true, length: {maximum: 1000}
	validate :point, presence: true, value: {maximum: 10, minimum: 0}
end
