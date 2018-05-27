class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def me
    render json: current_user
end

  def authenticate
      @user = User.find_by(username: params[:data][:name])
      if @user && @user.authenticate(params[:data][:password])
       render json: @user
      else
       render json: {error: "User Does Not Exist"}
     end
   end


def get_user
  if current_user
      render json: {user: current_user, questions:current_user.questions, reminders: current_user.reminders}
    else
      render json: {failure: "Error"}
    end
  end


  private

  def user_params
    params.require(:data).permit(:email, :password, :role, :username)
  end

end
