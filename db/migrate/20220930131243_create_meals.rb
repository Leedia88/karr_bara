class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.references :fry, foreign_key: true
      t.references :menu, foreign_key: true
      t.references :burger, foreign_key: true
      t.references :dessert, foreign_key: true
      t.references :drink, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
