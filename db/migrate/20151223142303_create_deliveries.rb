class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.string :from
      t.string :where
      t.decimal :length
      t.decimal :width
      t.decimal :height
      t.decimal :common_volume
      t.decimal :common_weight

      t.timestamps null: false
    end
  end
end
