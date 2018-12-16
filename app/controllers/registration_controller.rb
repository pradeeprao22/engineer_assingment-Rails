class RegistraionsController < Devise::RegistrationsController

    private
    def sign_up_params
      params.require(:user).permit(:first, :last, :email, :secret_code, :password, :password_confirmation)
    end
  
    def account_update_params
      params.require(:user).permit(:first, :last, :secret_code :email, :password, :password_confirmation, :current_password)
    end

end