class Tag < ActiveRecord::Base
	validates :name, presence: true

	has_many :pairings, dependent: :destroy
	has_many :posts, through: :pairings
end
