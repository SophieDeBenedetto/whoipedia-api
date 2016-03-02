class Season < ActiveRecord::Base
  has_many :episodes
  has_many :writers, through: :episodes
end