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

  def price_innovation_center
    quantity * self.sellable.price_innovation_center
  end

  def price_permanencier
    quantity * self.sellable.price_permanencier
  end

  def price_non_commercial
    quantity * self.sellable.price_non_commercial
  end

  def price_commercial
    quantity * self.sellable.price_commercial
  end

end
