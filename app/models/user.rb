class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true

  has_many :favorites
  has_many :buyers, through: :favorites, class_name: 'Buyer'

  def favorite?(buyer)
    favorite_buyers.include?(buyer)
  end
end
