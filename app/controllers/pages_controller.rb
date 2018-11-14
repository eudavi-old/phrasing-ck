class PagesController < ApplicationController
	layout false
	def show
		@posts = Post.all
		render template: "pages/#{params[:page]}"
	end
end
