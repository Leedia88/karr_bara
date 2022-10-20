class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :address
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
