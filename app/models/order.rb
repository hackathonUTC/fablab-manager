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

  def price
    quantity * sellable.price_innovation_center
  end

end
