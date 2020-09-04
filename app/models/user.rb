class User < ActiveRecord::Base
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :name, presence: true, uniqueness: true
    

    has_many :cabinets
    has_many :liquors, through: :cabinets
    
    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods


end
