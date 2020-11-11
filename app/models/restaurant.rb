class Restaurant < ApplicationRecord
  # Category must belong to this list
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORY }

  # Must have a name, an address and a category.
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  # ADD after creating reviews
  has_many :reviews, dependent: :destroy

end
