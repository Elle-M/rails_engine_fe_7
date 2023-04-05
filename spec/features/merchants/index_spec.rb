require "spec_helper"

describe "Merchant Index Page" do
  it "should show a list of merchants by name" do
    merchant1 = Merchant.create(name: "Bob's Burgers")
    merchant2 = Merchant.create(name: "Taco Bell")

    visit "/merchants"

    expect(page).to have_content(merchant1.name)
    expect(page).to have_content(merchant2.name)
  end
end