module Api
  module V1
    class EpisodesController < ApplicationController
      def index
        render json: Episode.all
      end

      def show
        episode = Episode.find(params[:id])
        render json: episode
      end
    end
  end
end