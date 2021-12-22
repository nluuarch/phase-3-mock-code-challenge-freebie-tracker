class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        freebies.any? do |freebie|
            freebie.item_name == item_name
        end
    end

    def give_away(dev, freebie)        
        freebie.update(dev: dev) unless freebie.dev != self

        # review solution:
        # if self == freebie.dev
        #     freebie.dev = dev
        #     freebie.save
        # else
        #     "Sorry, #{freebie.item_name} is not yours to give!"
        # end

        
    end

end
