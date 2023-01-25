class CreateJapLvls < ActiveRecord::Migration[7.0]
  def change
    create_table :jap_lvls do |t|
      t.string :level

      t.timestamps
    end
  end
end
