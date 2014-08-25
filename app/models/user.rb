class User < ActiveRecord::Base
	EMAIL_REGEX = /[a-zA-Z0-9.-]*@[a-zA-Z0-9]*.[a-zA-Z0-9.]{3,5}/

	has_many :posts

	# attr_accessor :email, :password, :password_confirmation

	# validates_presence_of :first_name, :last_name, :email, :password 
	validates :password, presence: true
	validates :email, uniqueness: true, format: EMAIL_REGEX
	validates_length_of :password, :in => 6..20, :on => :create
	validates_confirmation_of :password

	has_secure_password

	def full_name
		self.first_name + " " + self.last_name
	end
	
end
