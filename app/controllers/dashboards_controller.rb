class DashboardsController < ApplicationController
  def me
    skip_authorization
  end
end
