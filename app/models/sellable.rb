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

  def price
    self.prices.last
  end

  def price_innovation_center
    self.price.innovation_center
  end

  def price_permanencier
    self.price.permanencier
  end

  def price_non_commercial
    self.price.non_commercial
  end

  def price_commercial
    self.price.commercial
  end

end
