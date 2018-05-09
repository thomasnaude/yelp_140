class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w(French Japanese Chinese Italian)

  validates :name, presence: true
  validates :stars, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 3 }
  validates :category, inclusion: { in: CATEGORIES }
end
