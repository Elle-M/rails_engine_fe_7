require "rails_helper"

describe "Merchant Service" do
  it "should return a list of merchants" do
    merchant1 = Merchant.create(name: "Bob's Burgers")
    merchant2 = Merchant.create(name: "Taco Bell")

    merchants = MerchantsServices.new.all

    expect(merchants.first.name).to eq(merchant1.name)
    expect(merchants.last.name).to eq(merchant2.name)
  end
end