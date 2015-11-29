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

class PriceType < ActiveRecord::Base
end
