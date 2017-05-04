class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def admin?
    is_admin
  end
  has_many :favorites
  has_many :favorite_manufacturers, :through => :favorites, :source => :manufacturer
  def is_favorite_of?(manufacturer)
    favorite_manufacturers.include?(manufacturer)
  end

  def love!(manufacturer)
    favorite_manufacturers << manufacturer
  end
  def unlove!(manufacturer)
    favorite_manufacturers.delete(manufacturer)
  end

  has_many :collections
  has_many :following_medicines, :through => :collections, :source => :medicine

  def is_follower_of?(medicine)
    following_medicines.include?(medicine)
  end

  def add!(medicine)
    following_medicines << medicine
  end
  def remove!(medicine)
    following_medicines.delete(medicine)
  end

end
