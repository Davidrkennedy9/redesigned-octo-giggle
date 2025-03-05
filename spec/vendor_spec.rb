require './lib/item'
require './lib/vendor'
require "pry"

RSpec.describe Item do
    before :each do
        @vendor = Vendor.new("Rocky Mountain Fresh")
        @item1 = Item.new({name: 'Peach', price: "$0.75"})
        @item2 = Item.new({name: 'Tomato', price: '$0.50'})
    end

    describe "initialize" do

        it "exist" do
            expect(@vendor).to be_a(Vendor)
        end

    end   

        describe "attrubutes" do
            it "has a name" do
                expect(@vendor.name).to eq("Rocky Mountain Fresh")
            end

            it "has an inventory" do
                expect(@vendor.inventory).to eq({})
            end
        end

        describe "inventory" do
            it "can checkstock" do
                expect(@vendor.check_stock(@item1)).to eq(0)
            end

            it "can add items to inventory" do

                @vendor.stock(@item1, 30)

                expect(@vendor.inventory).to eq(@item1 => 30)

                expect(@vendor.check_stock(@item1)).to eq(30)

                 @vendor.stock(@item1, 25)

                 expect(@vendor.check_stock(@item1)).to eq(55)

                 @vendor.stock(@item2, 12)

                 expect(@vendor.inventory).to eq(@item1 => 55, @item2 => 12)
            end
        end
end    