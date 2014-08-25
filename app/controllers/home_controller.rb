class HomeController < ApplicationController
	def index
		@posts = Post.order('updated_at DESC')
	end

end