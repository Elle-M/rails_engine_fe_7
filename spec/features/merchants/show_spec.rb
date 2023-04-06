require "rails_helper"

describe "Merchant Show Page" do
  it "should show a list of items for that merchant" do
    merchant1 = Merchant.create(name: "Bob's Burgers")
    item1 = Item.create(name: "Burger", merchant_id: merchant1.id)
    item2 = Item.create(name: "Fries", merchant_id: merchant1.id)

    visit "/merchants/#{merchant1.id}"

    expect(page).to have_content(item1.name)
    expect(page).to have_content(item2.name)
  end
end