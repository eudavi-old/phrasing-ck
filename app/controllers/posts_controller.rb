class PostsController < ApplicationController

	before_action :set_post, only: [:show]
	before_action :authenticate_user!, except: [:show]
	
	def index
		@posts = Post.all.reverse
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.update_attribute(:descricao, params[:descricao][0])
		if @post.save!
			redirect_to root_path
		end
	end

	def show ;end

	private

	def set_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:titulo, :resumo, :video, :capa)
	end
end
