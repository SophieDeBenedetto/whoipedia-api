class Writer < ActiveRecord::Base
  has_many :episode_writers
  has_many :episodes, through: :episode_writers
  has_many :seasons, through: :episodes
end