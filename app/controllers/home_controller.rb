class HomeController < ApplicationController
  layout 'home'
  def index
    @offerings = Offering.all
  end

  def results
    @offerings = Offering.all
  end

  def offering
    @offerings = Offering.find(7)
  end

  private

  def admins_and_users
    !current_user.nil? ? 'application' : 'home'
  end
end
