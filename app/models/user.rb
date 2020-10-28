class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :foods
  has_many :motions
  with_options presence: true do
    validates :name, length: { maximum: 40 }
    validates :day_money, numericality: { only_integer: true, greater_than: 1, less_than: 100000 }
    validates :metabolism, numericality: { only_integer: true, greater_than: 1, less_than: 5000 }
  end
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i
  validates :password, presence: true, format: { with: VALID_PASSWORD_REGEX }

  def self.guest
    find_or_create_by!(email: "user@gmail.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
