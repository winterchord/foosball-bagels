class SignInController < ApplicationController
  def index
    render :index
  end

  def create
    if params[:sign_in][:password] == "secret" && params[:sign_in][:hp].empty?
      session[:signed_in] = true
    else
      flash[:error] = "Incorrect password, mate."
    end
    redirect_to root_path
  end
end
