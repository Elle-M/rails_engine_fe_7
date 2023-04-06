class MerchantService

  def fetch_merchants
    response = conn.get("/api/v1/merchants")
    parse(response)
  end

  def fetch_merchant_name(merchant_id)
    # require 'pry'; binding.pry
    #merchant id is returning merchant object
    response = conn.get("/api/v1/merchants")
    parse(response)
  end

  def fetch_merchant_items(merchant_id) #merchant id is returning merchant object
    response = conn.get("/api/v1/merchants/1/items")
    #hard coded to test- working!
    parse(response)
  end

  def conn
    @conn = Faraday.new(url: "http://localhost:3000")
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end