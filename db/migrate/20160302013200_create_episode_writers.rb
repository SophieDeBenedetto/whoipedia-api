class CreateEpisodeWriters < ActiveRecord::Migration
  def change
    create_table :episode_writers do |t|
      t.integer :episode_id
      t.integer :writer_id
    end
  end
end
