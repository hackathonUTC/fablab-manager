# == Schema Information
#
# Table name: sellables
#
#  id               :integer          not null, primary key
#  unit             :string
#  name             :string
#  description      :string
#  stock            :integer
#  sellable_type_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Sellable < ActiveRecord::Base
  has_many :prices, inverse_of: :sellable, dependent: :destroy
  accepts_nested_attributes_for :prices

  validates :prices, length: {minimum: 1}
  validates :sellable_type_id, presence: true
  validates :unit, presence: true
  validates :name, presence: true
  validates :stock, numericality: {greater_than_or_equal_to: 0, only_integer: true}

  belongs_to :sellable_type

  # priceType : object
  def price(priceType)
    self.prices.order(:created_at).find_by_price_type_id(priceType.id)
  end

  # priceType : object
  def price_value(priceType)
    self.price(priceType).value
  end

end
