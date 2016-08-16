class User < ActiveRecord::Base
  has_secure_password

  # key piece of confirmation logic
  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
end
