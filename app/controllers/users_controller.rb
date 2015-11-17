class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def user_params
    params.require(:user).permit(:username)
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = User.find_by(id: params[:id])
    if user.nil?
      render text: "cannot find user"
    else render json: user
    end
  end

  def update
    user = User.find_by(id: params[:id])
    if user.nil?
      render text: "cannot find user"
    elsif user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    if user.nil?
      render text: "cannot find user"
    elsif user.destroy
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end


end
