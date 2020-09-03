class User < ActiveRecord::Base
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    

    has_many :tables
    
    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods

    
end
