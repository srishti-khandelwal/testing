class PostsController < ApplicationController
	def index
		@posts = Post.all.order('created_at DESC')
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post].permit(:title,:content))
		
		if(@post.save)
			redirect_to @post, :notice => "Your Post was saved"
		else
			render "new"
		end
	end

	def edit
		@post = Post.find(params[:id])

	end

	def update
		@post = Post.find(params[:id])
		if(@post.update_attributes(params[:post].permit(:title,:content)))
			redirect_to posts_path, :notice => "Your post has been updated"
		else
			render "edit"
		end

	end

	def destroy 
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path, :notice => "Your post has been deleted"
	end

	def try1
		render ('try1')
	end

end
