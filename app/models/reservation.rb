class Reservation < ApplicationRecord
    belongs_to :customer

    validates :room, presence: true
    validates :start_date, presence: true
end
