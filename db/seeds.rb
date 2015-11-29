# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Necessary
@priceType1 = PriceType.create(name: 'Prix centre d\'innovation', display: false)
@priceType2 = PriceType.create(name: 'Prix permanencier', display: false)
@priceType3 = PriceType.create(name: 'Prix non commercial', display: true)
@priceType4 = PriceType.create(name: 'Prix commercial', display: true)

# Recommended
@type1 = SellableType.create(name: 'Machine')
@type2 = SellableType.create(name: 'Fourniture')



# Optional
@sellable1 = Sellable.create(unit: 'metre', name: 'Cube 1 : machine', description: 'Cube 1 : description', stock: 200, sellable_type_id: @type1.id)
@price11 = Price.create(value: 4, price_type_id: @priceType1.id, sellable_id: @sellable1.id)
@price12 = Price.create(value: 3, price_type_id: @priceType2.id, sellable_id: @sellable1.id)
@price13 = Price.create(value: 2, price_type_id: @priceType3.id, sellable_id: @sellable1.id)
@price14 = Price.create(value: 1, price_type_id: @priceType4.id, sellable_id: @sellable1.id)


@sellable2 = Sellable.create(unit: 'metre', name: 'Cube 2 : fourniture', description: 'Cube 2 : description', stock: 200, sellable_type_id: @type2.id)
@price21 = Price.create(value: 4, price_type_id: @priceType1.id, sellable_id: @sellable2.id)
@price22 = Price.create(value: 3, price_type_id: @priceType2.id, sellable_id: @sellable2.id)
@price23 = Price.create(value: 2, price_type_id: @priceType3.id, sellable_id: @sellable2.id)
@price24 = Price.create(value: 1, price_type_id: @priceType4.id, sellable_id: @sellable2.id)


@sellable3 = Sellable.create(unit: 'metre', name: 'Cube 3 : machine', description: 'Cube 3 : description', stock: 200, sellable_type_id: @type1.id)
@price31 = Price.create(value: 4, price_type_id: @priceType1.id, sellable_id: @sellable3.id)
@price32 = Price.create(value: 3, price_type_id: @priceType2.id, sellable_id: @sellable3.id)
@price33 = Price.create(value: 2, price_type_id: @priceType3.id, sellable_id: @sellable3.id)
@price34 = Price.create(value: 1, price_type_id: @priceType4.id, sellable_id: @sellable3.id)


@sellable4 = Sellable.create(unit: 'metre', name: 'Cube 4 : fourniture', description: 'Cube 4 : description', stock: 200, sellable_type_id: @type2.id)
@price41 = Price.create(value: 4, price_type_id: @priceType1.id, sellable_id: @sellable4.id)
@price42 = Price.create(value: 3, price_type_id: @priceType2.id, sellable_id: @sellable4.id)
@price43 = Price.create(value: 2, price_type_id: @priceType3.id, sellable_id: @sellable4.id)
@price44 = Price.create(value: 1, price_type_id: @priceType4.id, sellable_id: @sellable4.id)