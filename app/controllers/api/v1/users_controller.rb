module Api
  module V1
    class UsersController < ApplicationController

      skip_before_action :authenticate!, only: [:create]

      def me
        render json: current_user
      end

      def create
        user = User.create(user_params)
        render json: {user: {emai: user.email, password: user.password}}
      end

      private
        def user_params
          params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end

    end
  end
end