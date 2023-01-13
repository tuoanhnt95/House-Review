class CreateBuildingStations < ActiveRecord::Migration[7.0]
  def change
    create_table :building_stations do |t|
      t.references :building, null: false, foreign_key: true
      t.references :station, null: false, foreign_key: true
      t.integer :distance
      t.references :travel_method, null: false, foreign_key: true
      t.integer :travel_time

      t.timestamps
    end
  end
end
