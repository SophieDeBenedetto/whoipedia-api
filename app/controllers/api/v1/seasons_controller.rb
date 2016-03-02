module Api
  module V1
    class SeasonsController < ApplicationController
      def index
        render json: Season.all
      end

      def show
        season = Season.find(params[:id])
        render json: season
      end
    end
  end
end