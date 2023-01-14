class CreateCityWardDistricts < ActiveRecord::Migration[7.0]
  def change
    create_table :city_ward_districts do |t|
      t.string :name
      t.string :name_jpn
      t.references :prefecture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
