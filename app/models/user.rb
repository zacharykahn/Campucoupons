class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :full_name, :presence => true
  attr_accessible :full_name, :email, :password, :password_confirmation, :remember_me

  has_many :coupons, :foreign_key => :buyer_id
  has_many :deals, :through => :coupons
  has_one :business, :foreign_key => :representative_id
end
