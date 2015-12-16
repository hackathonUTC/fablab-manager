# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  quantity    :integer
#  discount    :float
#  invoice_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  sellable_id :integer
#

class Order < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :sellable

  validates :quantity, presence: true
  validates :discount, presence: true
  validates :invoice, presence: true
  validates :sellable, presence: true

  def price(priceType)
    self.sellable.price_value(priceType) * self.quantity * ((100-self.discount)/100)
  end
end
