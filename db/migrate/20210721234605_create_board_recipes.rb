class CreateBoardRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :board_recipes do |t|
      t.belongs_to :recipe, null: false, foreign_key: true
      t.belongs_to :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
