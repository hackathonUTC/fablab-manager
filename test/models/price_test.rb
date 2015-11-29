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

require 'test_helper'

class PriceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
