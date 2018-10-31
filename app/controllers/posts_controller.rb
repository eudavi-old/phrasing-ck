class PostsController < ApplicationController

	before_action :set_post, only: [:show]
	before_action :authenticate_user!

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save!
			render json: @post
		end
	end

	def show ;end

	private

	def set_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.permit(:descricao)
	end
end
