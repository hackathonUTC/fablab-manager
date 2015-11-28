class Invoice < ActiveRecord::Base
  validates :orders, length: {minimum: 1}

  has_many :orders

end
