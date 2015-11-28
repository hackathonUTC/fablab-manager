# == Schema Information
#
# Table name: sellables
#
#  id                          :integer          not null, primary key
#  unit                        :string
#  name                        :string
#  description                 :string
#  stock                       :integer
#  price_per_unit_CI           :float
#  price_per_unit_permanencier :float
#  price_per_unit_nc           :float
#  price_per_unit_c            :float
#  sellable_type_id            :integer
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#

require 'test_helper'

class SellableTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
