class Episode < ActiveRecord::Base
  belongs_to :season
  has_many :episode_writers
  has_many :writers, through: :episode_writers
end