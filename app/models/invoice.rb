# == Schema Information
#
# Table name: invoices
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Invoice < ActiveRecord::Base
  has_many :orders
  accepts_nested_attributes_for :orders
  validates :orders, length: {minimum: 1}

  def price
    sum = 0
    self.orders.each do |o|
        sum += o.price
    end
    sum
  end

end
