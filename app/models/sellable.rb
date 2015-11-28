class Sellable < ActiveRecord::Base
  validates :sellable_type, presence: true

  belongs_to :sellable_type
end
