class CreateOrderMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :order_meals do |t|
      t.references :order, foreign_key: true
      t.references :menu, index: true
      t.references :recipe, index: true
      t.references :cooking, index: true
      t.boolean :dessert
      t.references :drink, index: true
      t.string :option
      t.float :price, :default => 0
      t.timestamps
    end
  end
end
