class Board < ApplicationRecord
  belongs_to :user
  has_many :board_recipes
  has_many :recipes, through: :board_recipes
end
