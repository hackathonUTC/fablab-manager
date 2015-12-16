# == Schema Information
#
# Table name: sellable_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SellableType < ActiveRecord::Base
  validates :name, presence: true

  has_many :sellables
end
