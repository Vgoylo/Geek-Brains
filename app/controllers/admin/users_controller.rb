module Admin 
  class UsersController < ApplicationController 
    def index
      @users = User.all
    end

    def show
      @user = User.find(user_params[:id])
    end

    def destroy
    end

    private 

    def user_params
      params.require(:user).permit(:name)
    end
  end
end
