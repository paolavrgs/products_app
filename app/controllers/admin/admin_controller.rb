module Admin
  class AdminController < ::ApplicationController
    before_action :verify_role

    private

    def verify_role
      unless current_user.has_role? :admin
        redirect_to root_path
      end
    end
  end
end