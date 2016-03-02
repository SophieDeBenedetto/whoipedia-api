class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :name, :air_date,
  :description, :season_id, :writer_ids
end