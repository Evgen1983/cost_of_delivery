class AddDistanceToDeliveries < ActiveRecord::Migration
  def change
    add_column :deliveries, :distance, :decimal
  end
end
