# app/controller/dashboard_controller

class DashboardController < ApplicationController
  include Secured
  def show
    @user = session[:userinfo]
  end
end