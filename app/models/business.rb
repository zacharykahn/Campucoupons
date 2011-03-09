class Business < ActiveRecord::Base
  belongs_to :representative, :class_name=> 'User'
  has_many :locations, :as => :locatable
  has_many :deals

  accepts_nested_attributes_for :representative

  validates :title, :presence => true

  def single_location?
    locations.size == 1
  end
end
