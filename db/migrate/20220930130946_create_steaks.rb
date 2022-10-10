class CreateSteaks < ActiveRecord::Migration[5.2]
  def change
    create_table :steaks do |t|
      t.string :name

      t.timestamps
    end
  end
end
