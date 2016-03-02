class EpisodeWriter < ActiveRecord::Base
  belongs_to :episode 
  belongs_to :writer
end