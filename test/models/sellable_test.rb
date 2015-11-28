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

require 'test_helper'

class SellableTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
