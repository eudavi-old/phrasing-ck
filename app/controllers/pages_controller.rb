class PagesController < ApplicationController
	def show
		@posts = Post.all

		if params[:page] == "index"
			render template: "pages/#{params[:page]}", layout: false	
		else
			render template: "pages/#{params[:page]}"
		end
	end
end
