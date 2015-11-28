# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  quantite   :integer
#  reduction  :float
#  invoice_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  belongs_to :invoice
end
