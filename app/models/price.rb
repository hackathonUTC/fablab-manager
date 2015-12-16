# == Schema Information
#
# Table name: prices
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  sellable_id   :integer
#  price_type_id :integer
#  value         :float
#

class Price < ActiveRecord::Base
  validates :value, presence: true, numericality: {greater_than_or_equal_to: 0}

  belongs_to :sellable, inverse_of: :prices
  validates :sellable, presence: true

  belongs_to :price_type
  validates :price_type, presence: true
end
