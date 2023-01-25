class CreatePrefectures < ActiveRecord::Migration[7.0]
  def change
    create_table :prefectures do |t|
      t.string :name
      t.string :name_jpn
      t.string :prefecture_code

      t.timestamps
    end
  end
end
