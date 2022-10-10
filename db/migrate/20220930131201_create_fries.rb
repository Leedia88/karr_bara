class CreateFries < ActiveRecord::Migration[5.2]
  def change
    create_table :fries do |t|
      t.string :sauce

      t.timestamps
    end
  end
end
