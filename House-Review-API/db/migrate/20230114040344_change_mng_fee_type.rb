class ChangeMngFeeType < ActiveRecord::Migration[7.0]
  def change
    change_column :buildings, :mng_fee, :decimal
  end
end
