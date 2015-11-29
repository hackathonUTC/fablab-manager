# == Schema Information
#
# Table name: price_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  display    :boolean          default(FALSE), not null
#

require 'test_helper'

class PriceTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
