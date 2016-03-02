class WriterSerializer < ActiveModel::Serializer
  attributes :id, :name, :episode_ids, :season_ids
end