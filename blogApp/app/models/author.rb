class Author < ActiveRecord::Base
	validates :name, presence: true
	validates :image, presence: true
	has_many :posts, dependent: :destroy
end
