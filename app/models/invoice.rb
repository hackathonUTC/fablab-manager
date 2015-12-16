# == Schema Information
#
# Table name: invoices
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  payed       :boolean
#  comment     :string
#  created_by  :integer
#  created_for :integer
#

class Invoice < ActiveRecord::Base
  has_many :orders, inverse_of: :invoice, dependent: :destroy
  accepts_nested_attributes_for :orders, :allow_destroy => true
  validates :orders, length: {minimum: 1}

  belongs_to :creator, class_name: 'User', foreign_key: 'created_by'
  belongs_to :client, class_name: 'User', foreign_key: 'created_for'

  def price(priceType)
    sum = 0
    self.orders.each do |o|
      sum += o.price(priceType)
    end
    sum
  end

end
