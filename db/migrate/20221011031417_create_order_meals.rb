class CreateOrderMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :order_meals do |t|
      t.references :order, foreign_key: true
      t.references :menu, index: true
      t.references :burger, index: true
      t.references :cooking, index: true
      t.references :dessert, index: true
      t.references :fries, index: true
      t.string :option
      t.float :price

      
      t.timestamps
    end
  end
end
