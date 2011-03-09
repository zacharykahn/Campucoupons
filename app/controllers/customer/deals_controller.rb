class Customer::DealsController < InheritedResources::Base
  actions :index, :show

  layout 'account'

  protected

  def begin_of_association_chain
    current_user
  end
end
