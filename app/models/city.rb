class City < ActiveRecord::Base
  has_many :deals
  has_many :locations

  belongs_to :state
end
