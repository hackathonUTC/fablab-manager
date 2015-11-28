# == Schema Information
#
# Table name: invoices
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Invoice < ActiveRecord::Base
  validates :orders, length: {minimum: 1}

  has_many :orders

end
