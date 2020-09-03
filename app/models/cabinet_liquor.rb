class CabinetLiquor < ActiveRecord::Base
    belongs_to :cabinet
    belongs_to :liquor
    
end
