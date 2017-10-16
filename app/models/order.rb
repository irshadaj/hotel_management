class Order < ApplicationRecord
    belongs_to :reservation

    validates :quantity, presence: true
    validates :cost, presence: true
end
