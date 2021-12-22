class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        freebies.all? do |freebie|
            freebie.item_name == item_name
        end
    end

    def give_away(dev, freebie)
        Freebie.update(freebie.id, dev_id: dev.id)
    end


end
