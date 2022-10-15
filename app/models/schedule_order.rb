class ScheduleOrder < ApplicationRecord

  belongs_to :schedule
  belongs_to :order

  validates_uniqueness_of :order_id, :scope => :schedule_id
  
end
