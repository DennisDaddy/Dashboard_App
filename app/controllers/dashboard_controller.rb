class DashboardController < ApplicationController
  def index
  	@websites = Website.all
  end
end
