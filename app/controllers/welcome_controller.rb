class WelcomeController < ApplicationController
  def index
    @user = session[:userinfo]
    @account = Account.find_by(account_holder: @user[:info][:name]) if !@user.nil?
  end
end
