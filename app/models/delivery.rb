class Delivery < ActiveRecord::Base
  before_save :delivery_calculation
  validates :from, :where, :length, :width, :height, :common_weight, :common_volume, :distance, presence: true
  validates :length, :width, :height, :common_weight, :common_volume, :distance, numericality: {greater_than: 0}
 
  # add calculation of delivery
  def delivery_calculation
    self.calculation = 500 + (self.distance * (self.length + self.width + self.height + self.common_weight))
  end

end
