
class Vendor
    attr_reader :name, :inventory
    def initialize(name)
        @name = name
        @inventory = {}
    end

    def check_stock(item)
        @inventory[item] ||= 0
    end

    def stock(item, quantity)
        if @inventory.key?(item)
            @inventory[item] += quantity
        else
            @inventory[item] = quantity
        end
        
    end
    
end
