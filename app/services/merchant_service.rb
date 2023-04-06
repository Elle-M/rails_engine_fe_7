class MerchantService

  def fetch_merchants
    response = conn.get("/api/v1/merchants")
    parse(response)
  end

  def fetch_merchant_name(merchant_id)
    response = conn.get("/api/v1/merchant")
    parse(response)
  end

  def conn
    @conn = Faraday.new(url: "http://localhost:3000")
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end