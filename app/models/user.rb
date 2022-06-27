class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :confirmable

    has_many :products

    validates :user_name, presence: true
    validates :email, presence: true
    
  enum role: {buyer:0, admin:1 ,seller:2}
end
