class CreateScheduleOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :schedule_orders do |t|
      t.references :schedule, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
