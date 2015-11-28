# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@type1 = SellableType.create(name: 'Machine')
@type2 = SellableType.create(name: 'Fourniture')

@sellable1 = Sellable.create(unit: 'metre', name: 'Cube 1 : machine', description: 'Cube 1 : description', stock: 200, sellable_type_id: @type1.id)
@price1 = Price.create(innovation_center: 1, permanencier: 1, non_commercial: 1, commercial: 1, sellable_id: @sellable1.id)


@sellable2 = Sellable.create(unit: 'metre', name: 'Cube 2 : fourniture', description: 'Cube 2 : description', stock: 200, sellable_type_id: @type2.id)
@price2 = Price.create(innovation_center: 2, permanencier: 2, non_commercial: 2, commercial: 2, sellable_id: @sellable2.id)


@sellable3 = Sellable.create(unit: 'metre', name: 'Cube 3 : machine', description: 'Cube 3 : description', stock: 200, sellable_type_id: @type1.id)
@price3 = Price.create(innovation_center: 3, permanencier: 3, non_commercial: 3, commercial: 3, sellable_id: @sellable3.id)


@sellable4 = Sellable.create(unit: 'metre', name: 'Cube 4 : fourniture', description: 'Cube 4 : description', stock: 200, sellable_type_id: @type2.id)
@price4 = Price.create(innovation_center: 4, permanencier: 4, non_commercial: 4, commercial: 4, sellable_id: @sellable4.id)