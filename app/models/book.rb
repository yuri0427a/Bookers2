class Book < ApplicationRecord
	belongs_to :user
	validates :title,uniqueness: true
	validates :body,uniqueness: true
	validates :body, length: { maximum: 200}
end
