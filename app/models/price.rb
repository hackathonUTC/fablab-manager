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

class Price < ActiveRecord::Base
  validates :innovation_center, :permanencier, :non_commercial, :commercial, presence: true

  belongs_to :sellable
end
