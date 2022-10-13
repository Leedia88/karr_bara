class Schedule < ApplicationRecord

    has_many :orders

    def self.available(quantity)
        Schedule.where("available > ?", quantity)
    end

end
