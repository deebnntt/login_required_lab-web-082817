class SecretsController < ApplicationController

  def show
    if session[:name] == nil || session[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      render :show
    end
  end

  def index
  end

end
