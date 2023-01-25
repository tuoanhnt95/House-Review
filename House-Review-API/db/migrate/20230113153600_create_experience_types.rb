class CreateExperienceTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :experience_types do |t|
      t.string :experience_type

      t.timestamps
    end
  end
end
