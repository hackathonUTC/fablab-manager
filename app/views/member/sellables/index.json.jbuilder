json.array!(@sellables) do |sellable|
  json.extract! sellable, :id, :unit, :name, :description, :stock, :price_per_unit_CI, :price_per_unit_permanencier, :price_per_unit_nc, :price_per_unit_c, :sellable_type_id
  json.url sellable_url(sellable, format: :json)
end
