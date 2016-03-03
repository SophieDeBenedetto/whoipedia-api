class Episode < ActiveRecord::Base
  belongs_to :season
  has_many :episode_writers
  has_many :writers, through: :episode_writers

  def update_from_params(params)
    update_attrs(params)
    update_writer(params)
    update_season(params)
    self.save
  end 

  def self.new_from_params(params)
    self.create.tap do |episode|
      episode.name = params[:name]
      episode.air_date = params[:air_date]
      episode.description = params[:description]
      episode.season = Season.find(params[:season][:id])
      episode.save
    end
  end

  private

    def update_writer(params)
      params[:writers].each do |ep_writer|
        writer = Writer.find(ep_writer[:id])
        writer.update(name: ep_writer[:name])
      end
    end

    def update_attrs(params)
      self.name = params[:name]
      self.air_date = params[:air_date]
      self.description = params[:description]
    end

    def update_season(params)
      new_season = Season.find_by_number(params[:season][:number])
      self.season = new_season
    end
end