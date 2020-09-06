class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:sex_id,:first_name,:last_name,:first_name_kana,:last_name_kana,:birthday,:image,:likesports_id,:liketeam_id,:watching_date,:prefectures_id,:job_id,:marriage_id])
    end

end
