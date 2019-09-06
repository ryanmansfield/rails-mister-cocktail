class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence: true, allow_blank: false
  has_many :doses
  has_many :cocktails, through: :doses
end
