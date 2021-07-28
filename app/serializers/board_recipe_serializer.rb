class BoardRecipeSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :board
  has_many :recipes
end
