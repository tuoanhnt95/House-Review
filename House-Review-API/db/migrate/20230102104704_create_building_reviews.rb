class CreateBuildingReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :building_reviews do |t|
      t.text :content
      t.references :building, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.decimal :living_duration

      t.timestamps
    end
  end
end
