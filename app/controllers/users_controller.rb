class UsersController < ApplicationController
  before_action :authenticate_user!

  def favorites
    @user = current_user
    @wineries = current_user.saved_wineries_list
  end
end