# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  quantite    :integer
#  reduction   :float
#  invoice_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  sellable_id :integer
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
