require "rails_helper"

describe "Item Facade" do
  it "should return a list of items" do
    merchant1 = Merchant.create(name: "Bob's Burgers")
    item1 = Item.create(name: "Burger", merchant_id: merchant1.id)
    item2 = Item.create(name: "Fries", merchant_id: merchant1.id)

    items = ItemFacade.all

    expect(items.first.name).to eq(item1.name)
    expect(items.last.name).to eq(item2.name)
  end
end