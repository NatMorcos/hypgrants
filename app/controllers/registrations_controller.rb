class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :artist_name, :contact_name, :phone_number)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :artist_name, :contact_name, :phone_number)
  end
end


