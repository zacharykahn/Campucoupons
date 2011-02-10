class Location < ActiveRecord::Base
  belongs_to :business
  belongs_to :state
  belongs_to :city
end
