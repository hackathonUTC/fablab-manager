class Order < ActiveRecord::Base
  belongs_to :invoice
end
