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
end
