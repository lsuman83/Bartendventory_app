class User < ActiveRecord::Base
    has_secure_password
    validates_presence_of :email, :username, :password_digest

    has_many :tables
    
end
