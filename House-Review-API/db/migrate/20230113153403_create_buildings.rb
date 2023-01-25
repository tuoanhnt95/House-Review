class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :building_url
      t.string :building_name
      t.decimal :mng_fee
      t.integer :built_year
      t.references :municipality, null: false, foreign_key: true
      t.string :area_address
      t.boolean :pet
      t.boolean :baby
      t.boolean :trash_time_restrict
      t.boolean :diy
      t.boolean :musical_instrument
      t.boolean :foreign_friendly

      t.timestamps
    end
  end
end
