class Book < ActiveRecord::Base
  validates :name, :description,  :price, presence: true
  validates :image_url, format: {with: %r{\.(gif|jpg|png)\Z}i, message: ': gif, jpg, png'}
end
