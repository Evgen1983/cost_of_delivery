class Delivery < ActiveRecord::Base
	
	validates :from, :where, :length, :width, :height, :common_weight, :common_volume, presence: true
	validates :length, :width, :height, :common_weight, :common_volume, numericality: {greater_than: 0}


 
 
	

end
