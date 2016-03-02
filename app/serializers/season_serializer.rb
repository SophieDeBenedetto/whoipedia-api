class SeasonSerializer < ActiveModel::Serializer
  attributes :id, :number, :start_date,
    :end_date, :doctor, :episode_ids, :writer_ids
end