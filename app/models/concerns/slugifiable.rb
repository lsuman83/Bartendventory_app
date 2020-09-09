module Slugifiable

    module InstanceMethods

        def slug

            self.name.downcase.gsub(" ", "-").concat("-#{self.id}")

        end

    end

    module ClassMethods

        def find_by_slug(slug)

            id = slug.split("-").last 
            self.find_by_id(id)

        end

    end


end