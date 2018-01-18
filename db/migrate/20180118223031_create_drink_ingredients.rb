class CreateDrinkIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :drink_ingredients do |t|
      t.belongs_to :drink, foreign_key: true
      t.belongs_to :liquor, foreign_key: true
      t.integer :measurement

      t.timestamps
    end
  end
end
