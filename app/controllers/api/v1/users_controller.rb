module Api
  module V1
    class UsersController < ApplicationController

      def me
        render json: current_user
      end

    end
  end
end