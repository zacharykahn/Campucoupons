class Representative::DealsController < InheritedResources::Base
  layout 'account'
  before_filter :validate_business_locations, :only => [:new, :edit, :create, :update]

  def create
    create! do |success, failure|
      success.html { redirect_to representative_deals_path }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to representative_deals_path }
    end
  end

  def destroy
    destroy! do |success, failure|
      success.html { redirect_to representative_deals_url }
    end
  end

  protected

  def begin_of_association_chain
    business
  end

  helper_method :business

  def business
    @business ||= current_user.business
  end

  def validate_business_locations
    if business.locations.empty?
      flash[:notice] = 'You need at least one location to create deal'
      redirect_to new_representative_business_location_path
    end
  end
end
