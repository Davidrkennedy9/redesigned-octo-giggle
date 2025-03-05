class Item
    attr_reader :name, :price
    def initialize(id)
     @name = id[:name]
     @price = id[:price]
    end
    
end