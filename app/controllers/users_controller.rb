class UsersController < InheritedResources::Base
  before_action :authorize_request

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end

