class Deal < ActiveRecord::Base
  has_many :coupons
  has_many :buyers, :through => :coupons
  has_many :allocations
  has_many :locations, :through => :allocations

  belongs_to :business
  belongs_to :city

  validates :title, :presence => true
  validates :description, :presence => true
  validates :fine_print, :presence => true

  before_create :init_locations

  def savings
    ((discounted_value/value) * 100).to_i
  end

  def expires_in
    ends_at - Time.now
  end

  private

  def init_locations
    return true unless locations.empty?
    raise ActiveRecord::ActiveRecordError.new("No Business specified") unless business
    raise ActiveRecord::ActiveRecordError.new("Business with multiple locations requires manual allocation") unless business.single_location?
    self.locations = business.locations
  end
end
