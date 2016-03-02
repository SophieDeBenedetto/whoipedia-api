class CreateTableEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :name
      t.datetime :air_date
      t.integer :season_id
    end
  end
end
