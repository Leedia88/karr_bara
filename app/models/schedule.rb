class Schedule < ApplicationRecord

    def self.available(quantity)
        Schedule.where("available > ?", quantity)
    end

end
