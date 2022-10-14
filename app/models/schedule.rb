class Schedule < ApplicationRecord

    has_many :orders

    def self.schedule_available(quantity)
        Schedule.where("available > ? OR available = ?", quantity, quantity)
    end

end
