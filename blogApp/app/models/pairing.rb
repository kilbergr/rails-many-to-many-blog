class Pairing < ActiveRecord::Base
  belongs_to :post
  belongs_to :tag
end
