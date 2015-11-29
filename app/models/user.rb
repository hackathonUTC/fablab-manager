# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  username            :string           default(""), not null
#  cn                  :string           default(""), not null
#  email               :string           default(""), not null
#  authorization_level :integer          default(0), not null
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :cas_authenticatable

  has_many :invoices, class_name: 'Invoice', foreign_key: 'created_for'

  def cas_extra_attributes=(extra_attributes)
    extra_attributes.each do |name, value|
      case name.to_sym
        when :cn
          self.cn = value
        when :mail
          self.email = value
      end
    end
  end

  # 0 : user, 1 : member, 2 : admin
  def is_user?
    self.authorization_level >= 0
  end

  def is_member?
    self.authorization_level >= 1
  end

  def is_admin?
    self.authorization_level >= 2
  end
end
