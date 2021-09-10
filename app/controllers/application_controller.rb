class ApplicationController < ActionController::Base
    before_action :login_required
    private
    def not_authenticated
        redirect_to login_path, alert: "Please login first"
    end
    def login_required
        redirect_to login_url unless current_user
    end
end
