class Book < ActiveRecord::Base
  validates :name, :description,  :price, presence: true
  validates :image_url, format: {with: %r{\.(gif|jpg|png)\Z}i, message: ': gif, jpg, png'}
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
end
