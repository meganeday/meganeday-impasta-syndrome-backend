class BoardSerializer < ActiveModel::Serializer
  attributes :id, :title, :detail
  has_many :board_recipes
  has_many :recipes, through: :board_recipes
end
