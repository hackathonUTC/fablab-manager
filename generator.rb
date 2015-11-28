rails g scaffold Invoice
rails g model Order quantite:integer reduction:float invoice:references
rails g scaffold Sellable unit:string name:string description:string stock:integer price_per_unit_CI:float price_per_unit_permanencier:float price_per_unit_nc:float price_per_unit_c:float sellable_type:references
rails g scaffold SellableType name:string
