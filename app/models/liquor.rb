class Liquor < ActiveRecord::Base
    validates :name, uniqueness: true
    
    has_many :cabinet_liquors
    has_many :cabinets, through: :cabinet_liquors
    

    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods
end
