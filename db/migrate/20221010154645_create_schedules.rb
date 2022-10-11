class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :slot
      t.integer :available

      t.timestamps
    end
  end
end
