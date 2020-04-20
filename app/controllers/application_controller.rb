class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?

   #ログイン後の遷移先パス
  def after_sign_in_path_for(resource) 
    user_path(current_user)
  end

   protected#他クラス、同パッケージから呼び出し可能
   #ログインと新規投稿のキーを指定
   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
     devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
   end

end
