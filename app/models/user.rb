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
end
