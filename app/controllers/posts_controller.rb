class PostsController < ApplicationController

	def new
	end


	def create
		#create a new post and pass the input stuff
  		@post = Post.new(post_params)
  		#save the post record in the database
  		@post.save
  		redirect_to @post
	end

	def show
		#find the post by id
		@post = Post.find(params[:id])
	end

	def index
		@posts = Post.all
	end

		private 
	#prevents attackers from getting this sensitive info
		def post_params
			params.require(:post).permit(:title, :description, :image)
		end
		# ANYTHING IN HERE WILL BE PRIVATE, PUT STUFF ABOVE
		#gives our app permisson to access both email and password

end
