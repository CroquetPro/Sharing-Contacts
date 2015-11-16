class UsersController < ApplicationController

  def index
    render json: User.all 
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

end
