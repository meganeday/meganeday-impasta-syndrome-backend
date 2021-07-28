class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :recipe_title
      t.string :time
      t.string :meal_type
      t.string :image
      t.string :ingredient_list, array: true, default: []
      t.string :instruction_list, array: true, default: []
      t.boolean :favorite

      t.timestamps
    end
    add_index :recipes, :ingredient_list, using: 'gin'
    add_index :recipes, :instruction_list, using: 'gin'
  end
end

