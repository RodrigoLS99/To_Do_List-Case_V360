class ApplicationController < ActionController::Base
  # Adicione estas linhas para configurar o Devise
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Permite o parametro :name no cadastro (sign_up)
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    
    # Permite o parametro :name na edição de conta (account_update)
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end