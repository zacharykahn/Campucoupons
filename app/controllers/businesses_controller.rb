class BusinessesController < InheritedResources::Base
  actions :all, :except => [ :edit, :update, :destroy ]

  def create
    create! do |success, failure|
      success.html do
        sign_in(resource.representative)
        flash[:notice] = "Before creating deals, you need to specify your business locations"
        redirect_to new_representative_business_location_path
      end
    end
  end

  protected

  def build_resource
    super
    resource.representative = current_user if current_user
    resource
  end
end
