json.array!(@tour_operators) do |tour_operator|
  json.extract! tour_operator, :name, :url
  json.url tour_operator_url(tour_operator, format: :json)
end
