class Admin::ApplicationController < ApplicationController
  before_action :authorize_admin!
  layout :layout_by_resource

  def index
    render 'index'
  end

  def authorize_admin!
    authenticate_user!
    render 'index' unless current_user.admin?
  end

  protected

  def after_sign_in_path_for(resource)
    sign_in_url = new_user_session_url
    if request.referer == sign_in_url
      super
    else
      stored_location_for(resource) || request.referer || admin_root_path
    end
  end

  def after_sign_out_path_for(_resource)
    redirect_to admin_root_path
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
