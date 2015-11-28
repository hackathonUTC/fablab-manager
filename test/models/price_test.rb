# == Schema Information
#
# Table name: prices
#
#  id                :integer          not null, primary key
#  innovation_center :float
#  permanencier      :float
#  non_commercial    :float
#  commercial        :float
#  sellable_id       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class PriceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
