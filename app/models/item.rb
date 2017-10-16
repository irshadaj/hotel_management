class Item < ApplicationRecord
    has_many :orders

    validates :name, presence: true
    validates :cost, presence: true
end
