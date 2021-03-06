json.array!(@deliveries) do |delivery|
  json.extract! delivery, :id, :from, :where, :length, :width, :height, :common_volume, :common_weight, :distance, :calculation
  json.url delivery_url(delivery, format: :json)
end
