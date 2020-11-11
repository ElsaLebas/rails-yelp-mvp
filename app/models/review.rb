class Review < ApplicationRecord
  # When a restaurant is destroyed, all of its reviews must be destroyed

  # Must have content and a rating.
  validates :content, presence: true
  validates :rating, presence: true

  # Rating must be a number between 0 and 5.
  validates :rating, inclusion: { in: (0..5) }, numericality: { only_integer: true }

  # Must belong to a restaurant.
  belongs_to :restaurant
end
