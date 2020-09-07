class Cabinet < ActiveRecord::Base
    belongs_to :user
    has_many :cabinet_liquors
    has_many :liquors, through: :cabinet_liquors

    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods
end