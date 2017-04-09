class Medicine < ApplicationRecord
  belongs_to :manufacturer
  has_many :collections
  has_many :followers, through: :collections, source: :user
end
