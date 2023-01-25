class CreateMunicipalities < ActiveRecord::Migration[7.0]
  def change
    create_table :municipalities do |t|
      t.string :name
      t.string :name_jpn
      t.references :prefecture, null: false, foreign_key: true
      t.string :municipality_code

      t.timestamps
    end
  end
end
