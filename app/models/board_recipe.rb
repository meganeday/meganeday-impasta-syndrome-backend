class BoardRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :board
end
