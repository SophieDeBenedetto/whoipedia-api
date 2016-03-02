class CreateTableSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.integer :number
      t.datetime :start_date
      t.datetime :end_date
      t.string :doctor
    end
  end
end
