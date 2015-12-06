class HomeController < ApplicationController
	before_action :load_tabs
	layout "public"

	def load_tabs
		@tabs = ['Acceuil', 'Machines', 'Fournitures', 'Contact']
	end

	def acceuil
	end

	def machines
	end

	def fournitures
	end

	def contact
	end
end
