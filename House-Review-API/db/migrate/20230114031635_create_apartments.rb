class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.string :apartment_url
      t.string :name
      t.string :layout
      t.decimal :rent_fee
      t.decimal :lease_deposit
      t.decimal :key_money
      t.decimal :guanrantee_deposit
      t.decimal :floor_area
      t.string :floor
      t.references :building, null: false, foreign_key: true
      t.boolean :available
      t.datetime :last_available

      t.timestamps
    end
  end
end
