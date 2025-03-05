require './lib/item'

RSpec.describe Item do
    before :each do
        @item = Item.new({name: 'Peach', price: "$0.75"})
    end
    describe "initialize" do

        it "exist" do
            expect(@item).to be_a(Item)
        end
        
    end

    describe "attributes" do

        it "has a name" do
            expect(@item.name).to eq("Peach")
        end

        it "has a price" do
            expect(@item.price).to eq("$0.75")
        end
    end

end