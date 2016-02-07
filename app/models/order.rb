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
  belongs_to :invoice, inverse_of: :orders
  belongs_to :sellable

  validates :quantity, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :discount, presence: true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :invoice, presence: true
  validates :sellable, presence: true

  def price(priceType)
    if self.discount && self.quantity
      self.sellable.price_value(priceType) * self.quantity * ((100-self.discount)/100)
    elsif self.quantity
      self.sellable.price_value(priceType) * self.quantity
    else
      0
    end
  end
end
