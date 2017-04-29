class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         PASSWORD_FORMAT = /\A
         (?=.{8,})          # Must contain 8 or more characters
         (?=.*\d)           # Must contain a digit
         (?=.*[a-z])        # Must contain a lower case character
         (?=.*[A-Z])        # Must contain an upper case character
         (?=.*[[:^alnum:]]) # Must contain a symbol
       /x

       validates :password,
         presence: true,
         length: {in: Devise.password_length },
         format: {with: PASSWORD_FORMAT},
         confirmation: true,
         on: :create

       validates :password,
         allow_nil: true,
         length: {in: Devise.password_length },
         format: {with: PASSWORD_FORMAT},
         confirmation: true,
         on: :update
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
