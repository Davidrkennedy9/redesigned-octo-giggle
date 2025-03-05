class Market
    attr_reader :name, :vendors
    def initialize(name)
        @name = name
        @vendors = []
    end

    def add_vendor(vendor)
        @vendors << vendor
    end

    def vendor_names
        @vendors.map(&:name)
    end

    def vendors_that_sell(item)
        vendor_items = []
        @vendors.each do |item|
            if @vendors.include?(item.name)
                vendor_items << venders
            end
        end
        vendor_items
        binding.pry
    end
end