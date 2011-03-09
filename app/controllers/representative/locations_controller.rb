class Representative::LocationsController < InheritedResources::Base
  layout 'account'

  def create
    create! do |success, failure|
      success.html { redirect_to representative_business_url }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to representative_business_url }
    end
  end

  def destroy
    destroy! do |success, failure|
      success.html { redirect_to representative_business_url }
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
end
