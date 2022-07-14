class User < ApplicationRecord
  after_create :create_empty_cart

  has_many :products
  has_many :orders
  has_one :cart

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :confirmable

  validates :user_name, presence: true
  validates :email, presence: true
    
  enum role: {buyer:0, admin:1 ,seller:2}

  def create_empty_cart
    self.create_cart
  end

end

