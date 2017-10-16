class Employee < ApplicationRecord
    validates :name, presence: true
    validates :joined, presence: true
    validates :password, presence: true
    validates :role_level, presence: true
end
