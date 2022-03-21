class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!,except: [:top, :about]


# ログイン後はグループのindexへ
  def after_sign_in_path_for(resource)
    groups_path
  end

# ログアウト後はトップ画面へ
  def after_sign_out_path_for(resource)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:first_name, :last_name, :first_name_kana, :last_name_kana, :encrypted_password, :group_id, :postal_code, :address, :telephone_number])
  end

end
