class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :recipe_title, :time, :meal_type, :image, :ingredient_list, :instruction_list, :favorite
  belongs_to :user
end
