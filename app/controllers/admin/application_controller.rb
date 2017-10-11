class Admin::ApplicationController < ApplicationController
  before_action:authorize_admin!

  def index
    binding.pry
    render layout: false
  end

  def authorize_admin!
    authenticate_user!
    unless current_user.admin?
      redirect_to root_path, alert: 'You must be an admin to do that.'
    end
  end

  layout :layout_by_resource

  protected

  def after_sign_in_path_for(resource)
    sign_in_url = new_user_session_url
    if request.referer == sign_in_url
      super
    else
      stored_location_for(resource) || request.referer || admin_categories_path
    end
  end

  private

  def layout_by_resource
    if devise_controller?
      'devise'
    else
      'application'
    end
  end
end
