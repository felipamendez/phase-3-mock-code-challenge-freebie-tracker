class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        if self.freebies.filter {|f| f.item_name == item_name} == item_name
            true
        else 
            false 
        end
    end

    def give_away(dev, freebie)
         if received_one?()
        freebie.dev_id = dev.id
         end
    end 

end
