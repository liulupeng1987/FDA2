class Manufacturer < ApplicationRecord
    validates :name, :address, :description, :contact_person, :phone, :email, :website, presence: true
end
