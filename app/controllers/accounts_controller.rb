class AccountsController < InheritedResources::Base
  actions :show, :edit, :update
  custom_actions :resource => :password
  defaults :resource_class => User, :collection_name => 'users', :instance_name => 'user'

  layout 'account'

  def update
    update!( :notice => "Account updated" ) do |success, failure|
      success.html do
        redirect_to account_path
      end
      failure.html do
        if params[:user] && params[:user][:password]
          render :template => 'accounts/password'
        else
          render :template => 'accounts/edit'
        end
      end
    end
  end

  private

  def resource
    @user ||= current_user
  end
end
