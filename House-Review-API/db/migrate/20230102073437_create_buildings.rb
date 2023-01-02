class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :building_url
      t.string :building_name
      t.integer :mng_fee
      t.integer :built_year

      t.timestamps
    end
  end
end
