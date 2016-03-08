module Api
  module V1
    class SeasonsmetaController < ApplicationController
      def alien_metadata
        data = Season.alien_metadata
        render json: data
      end

    end
  end
end