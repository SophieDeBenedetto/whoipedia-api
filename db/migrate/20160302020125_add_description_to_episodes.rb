class AddDescriptionToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :description, :string
  end
end
