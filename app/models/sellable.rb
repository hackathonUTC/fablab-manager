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
  has_many :prices, dependent: :destroy
  accepts_nested_attributes_for :prices

  #validates :prices, length: {minimum: 1}

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
