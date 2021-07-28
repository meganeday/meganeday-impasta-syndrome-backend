class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.string :detail

      t.timestamps
    end
  end
end
