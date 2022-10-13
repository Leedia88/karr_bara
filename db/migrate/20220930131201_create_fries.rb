class CreateFries < ActiveRecord::Migration[5.2]
  def change
    create_table :fries do |t|
      t.boolean :extra_fries
      t.timestamps
    end
  end
end
