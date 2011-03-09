require 'spec_helper'

describe Deal do
  before(:each) do
    @deal = Factory.build :deal
  end

  it "should set location to business associated single location" do
    @deal.business = Factory.create :business
    @deal.save
    @deal.locations.should == @deal.business.locations
  end

  it "should not overwrite manually initialized locations" do
    @deal.business = Factory.create :business
    @locations = [Factory.create(:location)]
    @deal.locations = @locations
    @deal.save
    @deal.locations.should == @locations
  end
end
