class Deal < ActiveRecord::Base
  has_many :coupons
  has_many :buyers, :through => :coupons

  belongs_to :business
  belongs_to :city
end
