class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resources)
    user_path(resources)
  end

  private

    def check_signed_in
      redirect_to new_user_session_url unless user_signed_in?
    end
end
