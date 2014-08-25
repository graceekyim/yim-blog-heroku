class PostsController < ApplicationController
	include ApplicationHelper

	def index

	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def edit
		@post = Post.find(params[:id])
	end

	def create
		params[:post].merge!(user_id: current_user.id)
		puts params[:post]
		@post = Post.new(params[:post].permit(:title, :content, :user_id))
		if @post.save
			redirect_to root_path
		else
			@post.errors.full_messages
			render "new"
		end
	end

	def update
		@post = Post.find(params[:id])
		@post.update(params[:post].permit(:title, :content))
		redirect_to root_path
	end

	def destroy
		Post.find(params[:id]).destroy
		redirect_to root_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :user_id)
	end

end