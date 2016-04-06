class SessionsController < ApplicationController
  def create
    session[:auth] = request.env['omniauth.auth'].except("extra")
    redirect_to root_path
  end

  def destroy
    session[:auth] = nil
    redirect_to root_path
  end

  def failure
    raise request.env['omniauth.auth'].except("extra")
  end
end