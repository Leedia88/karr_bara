class ScheduleOrder < ApplicationRecord
  belongs_to :schedule
  belongs_to :order
end
