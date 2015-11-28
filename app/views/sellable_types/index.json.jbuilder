json.array!(@sellable_types) do |sellable_type|
  json.extract! sellable_type, :id, :name
  json.url sellable_type_url(sellable_type, format: :json)
end
