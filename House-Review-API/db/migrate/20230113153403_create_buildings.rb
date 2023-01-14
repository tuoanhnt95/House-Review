class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :building_url
      t.string :building_name
      t.integer :mng_fee
      t.integer :built_year
      t.references :city_ward_district, null: false, foreign_key: true
      t.string :area_address

      t.timestamps
    end
  end
end
