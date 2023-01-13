class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :name_jpn
      t.string :postal_code
      t.references :city_ward_district, null: false, foreign_key: true
      t.string :area_address

      t.timestamps
    end
  end
end
