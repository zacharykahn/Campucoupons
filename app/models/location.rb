class Location < ActiveRecord::Base
  belongs_to :locatable, :polymorphic => true
  belongs_to :state
  belongs_to :city

  validates :address, :presence => true
  validates :zip_code, :presence => true
  validates :city_id, :presence => true
  validates :state_id, :presence => true
end
