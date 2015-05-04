class VisitorsController < ApplicationController
  def index
    if current_user.present?
      redirect_to dashboard_path
    end
  end
end
