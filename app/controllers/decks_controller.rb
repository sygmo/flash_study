class DecksController < ApplicationController
  def index
    @user = User.find(session[:user_id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
