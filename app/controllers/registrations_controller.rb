class RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]

  # POST /resource
  def create
    super
    resource.add_role(:client)
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [roles: []])
  end

  def sign_up_params
    params.require(:user).permit(:fullname, :dni, :email, :password, :password_confirmation)
  end

end