class Post < ActiveRecord::Base
	validates :name, presence: true
	validates :content, presence: true, uniqueness: true
	validates :author, presence: true

	has_many :pairings, dependent: :destroy
	has_many :tags, through: :pairings
	
	belongs_to :author
end
