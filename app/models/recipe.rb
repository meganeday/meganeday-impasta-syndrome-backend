class Recipe < ApplicationRecord
  belongs_to :user
  has_many :board_recipes
  has_many :boards, through: :board_recipes
end
