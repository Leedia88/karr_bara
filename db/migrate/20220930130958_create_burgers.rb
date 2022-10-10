class CreateBurgers < ActiveRecord::Migration[5.2]
  def change
    create_table :burgers do |t|
      t.references :recipe, foreign_key: true
      t.references :cooking, foreign_key: true
      t.references :steak, foreign_key: true

      t.timestamps
    end
  end
end
