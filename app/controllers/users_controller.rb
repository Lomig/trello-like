class UsersController < ApplicationController
  def logout
    sign_out current_user
    skip_authorization
    redirect_to root_path
  end
end
