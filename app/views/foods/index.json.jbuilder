json.array!(@foods) do |food|
  json.extract! food, :description, :serving_size, :serving_unit, :sugar, :carbohydrate, :source, :calories
  json.url food_url(food, format: :json)
end
