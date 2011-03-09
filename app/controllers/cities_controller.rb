class CitiesController < InheritedResources::Base
  actions :index, :show

  skip_before_filter :store_location

  def choose
    session[:current_city] = resource
    redirect_back_or_default deals_path
  end
end
