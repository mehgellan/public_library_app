class LibraryUsersController < ApplicationController
  def index
    @user = User.find_by(params[:id])
    @libraries = @user.libraries
  end
end
