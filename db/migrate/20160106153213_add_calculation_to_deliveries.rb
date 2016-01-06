class AddCalculationToDeliveries < ActiveRecord::Migration
  def change
    add_column :deliveries, :calculation, :decimal
  end
end
