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
  validates :price_type_id, presence: true

  belongs_to :sellable
end
