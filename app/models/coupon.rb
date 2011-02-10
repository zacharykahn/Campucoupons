class Coupon < ActiveRecord::Base
  belongs_to :deal
  belongs_to :buyer
end
