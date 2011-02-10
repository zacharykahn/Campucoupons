class Business < ActiveRecord::Base
  belongs_to :owner
  has_many :locations

end
