class UsersController < ApplicationController

	attr_accessor :password
	# def show 
	# 	before_filter
	# 	@user = current_user
	# end

	def new 
		@user = User.new
	end

	def show
		@user = User.find(session[:user_id])
	end

	def create
		@user = User.new(params[:user].permit(:first_name, :last_name, :email, :password, :password_confirmation))
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_path
		else
			@user.errors.full_messages
			render "new"
		end
	end

	def login
		@user = User.find_by_email(params[:user][:email])
		if @user && @user.authenticate(params[:user][:password])
			session[:user_id] = @user.id
			redirect_to root_path
		else
			render "new"
		end
	end

	def logout
		session[:user_id] = nil
		redirect_to root_path
	end

	def edit
		@user = User.find(session[:user_id])
	end

	def update
		@user = User.find(session[:user_id])
		puts params[:user]
		if @user.update_attributes(params[:user].permit(:first_name, :last_name, :email, :password, :password_confirmation))
			redirect_to root_path
		else
			render 'edit'
		end
	end

	private 

	def user_params
		params.require(:user).permit!(:first_name, :last_name, :email, :password, :password_confirmation)
	end

end