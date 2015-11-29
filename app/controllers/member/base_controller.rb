class Member::BaseController < ApplicationController
  before_action :authenticate_user!
  before_action :bouhou, except: [:show, :index]
  before_action :tabs

  def tabs
	@tabs = [{ name: "Factures", content: %{
		}},{ name: "Facture", content: %{
		}},{ name: "Membres", content: %{
		}}];
  end

  def bouhou
    unless current_user.is_member?
      render inline: 'You shall not pass !'
      return
    end
  end

end
