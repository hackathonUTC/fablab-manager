class Member::BaseController < ApplicationController
  before_action :authenticate_user!
  before_action :bouhou, except: [:show, :index]

  def bouhou
    if current_user.authorization_level < 1
      render inline: 'You shall not pass !'
      return
    end
  end

end
