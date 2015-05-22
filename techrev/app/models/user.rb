class User < ActiveRecord::Base
	include ActiveModel::Validations

	attr_accessor :username

	validates :username, presence:true, uniqueness:true
	
	has_secure_password

end
