class Representative::BusinessesController < InheritedResources::Base
  belongs_to :current_user, :singleton => true

  layout 'account'

  def update
    update! do |success, failure|
      success.html { redirect_to representative_business_url }
    end
  end
  protected

  def begin_of_association_chain
    current_user
  end
end
