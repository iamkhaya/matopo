class HomeController < ApplicationController
  layout "home"
  def index
    @offerings = Offering.all
  end

  private
    def admins_and_users
      !current_user.nil? ? "application" : "home"
    end

end
