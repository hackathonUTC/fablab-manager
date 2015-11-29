class Member::BaseController < ApplicationController
  before_action :authenticate_user!
  before_action :bouhou, except: [:show, :index]

  def bouhou
    unless current_user.is_member?
      render inline: 'You shall not pass !'
      return
    end
  end

end
