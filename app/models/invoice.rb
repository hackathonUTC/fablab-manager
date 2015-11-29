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
  has_many :orders, dependent: :destroy
  accepts_nested_attributes_for :orders, :allow_destroy => true
  validates :orders, length: {minimum: 1}

  belongs_to :creator, class_name: 'User', foreign_key: 'created_by'
  belongs_to :client, class_name: 'User', foreign_key: 'created_for'

  def price_innovation_center
    sum = 0
    self.orders.each do |o|
      sum += o.price_innovation_center
    end
    sum
  end

  def price_permanencier
    sum = 0
    self.orders.each do |o|
      sum += o.price_permanencier
    end
    sum
  end

  def price_non_commercial
    sum = 0
    self.orders.each do |o|
      sum += o.price_non_commercial
    end
    sum
  end

  def price_commercial
    sum = 0
    self.orders.each do |o|
      sum += o.price_commercial
    end
    sum
  end

end
