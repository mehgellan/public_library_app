class LibraryUsersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @libraries = @user.libraries
  end

  def create
    @library = Library.find(params[:library_id])
    @library.users.push(current_user)

    redirect_to user_libraries_path(current_user)
  end
end
