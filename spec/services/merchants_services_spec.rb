require "rails_helper"

describe "Merchant Service" do
  it "should return a list of merchants" do
    merchant1 = Merchant.create(name: "Bob's Burgers")
    merchant2 = Merchant.create(name: "Taco Bell")

    merchants = MerchantsServices.new.all

    expect(merchants.first.name).to eq(merchant1.name)
    expect(merchants.last.name).to eq(merchant2.name)
  end

  it "should return a list of merchants with their items" do
    merchant1 = Merchant.create(name: "Bob's Burgers")
    merchant2 = Merchant.create(name: "Taco Bell")
    item1 = Item.create(name: "Burger", merchant_id: merchant1.id)
    item2 = Item.create(name: "Burrito", merchant_id: merchant2.id)

    merchants = MerchantsServices.new.all

    expect(merchants.first.items.first.name).to eq(item1.name)
    expect(merchants.last.items.first.name).to eq(item2.name)
  end
end