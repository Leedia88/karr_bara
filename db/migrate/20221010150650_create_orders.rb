class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.references :schedule
      t.string :user
      t.timestamps
    end
  end
end
