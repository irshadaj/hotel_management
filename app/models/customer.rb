class Customer < ApplicationRecord
    has_many :reservations
    self.primary_key

    validates :name, presence: true
    validates :address, presence: true
    validates :credit_name, presence: true
    validates :credit_num, presence: true, uniqueness: true
    validates :credit_exp, presence: true
    validates :credit_cvv, presence: true
end
