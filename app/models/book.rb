class Book < ActiveRecord::Base
  validates :name, :description,  :price, presence: true
  validates :image_url, format: {with: %r{\.(gif|jpg|png)\Z}i, message: ': gif, jpg, png'}
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Existiert')
      return false
    end
  end

end
