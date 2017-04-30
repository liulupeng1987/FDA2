class Manufacturer < ApplicationRecord
    mount_uploader :cardimage, CardimageUploader
    is_impressionable
    validates :name, :address, :description, :contact_person, :phone, :email, :website, presence: true
    has_many :medicines
    has_many :favorites
    has_many :fans, through: :favorites, source: :user



end
