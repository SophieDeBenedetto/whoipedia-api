module Api
  module V1
    class UsersController < ApplicationController

      skip_before_action :authenticate!, only: [:create]

      def me
        render json: current_user
      end

      def create
        user = User.create(user_params)
        if user.save
          render json: {user: {email: user.email, password: user.password}}, status: 201
        else
          puts user.errors.messages
          render json: {reason: {error: user.errors.messages}}, status: 419
        end
      end

      private
        def user_params
          params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end

    end
  end
end