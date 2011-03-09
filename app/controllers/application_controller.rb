class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :store_location

  helper_method :current_city

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  def current_city
    session[:current_city] || session[:current_city] = City.where(:title => 'Los Angeles').first
  end

  def current_city=(city)
    session[:current_city] = city
  end

  def store_location
    session[:return_to] = request.fullpath if request.get?
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
  end
end
