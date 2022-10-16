class Schedule < ApplicationRecord

    has_many :orders

    def self.schedule_available(quantity)
        Schedule.where("available > ? OR available = ?", quantity, quantity)
    end

    def self.total_available
        Schedule.all.sum(:available)
    end

end
