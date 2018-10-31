class PagesController < ApplicationController
	layout false
	def show
		render template: "pages/#{params[:page]}"
	end
end
