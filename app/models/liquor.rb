class Liquor < ActiveRecord::Base
    has_many :cabinet_liquors
    has_many :cabinets, through: :cabinet_liquors
    has_many :users, through: :cabinets

    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods
end
