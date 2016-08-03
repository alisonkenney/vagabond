class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@posts = Post.new
	end

	def create
    	@post = Post.create(post_params)
    	redirect_to "/posts"
  	end

  	def show
  		@post = Post.find(params[:id])
  		@user = current_user
  	end

  	private

	def post_params
		params.require(:post).permit(:title, :description)		
	end
end
