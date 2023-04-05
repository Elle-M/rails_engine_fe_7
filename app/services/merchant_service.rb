require 'faraday'
require 'json'

class MerchantService

  def fetch_merchants
    response = conn.get("/api/v1/merchants")
    parse(response)
  end

  private 

  def conn
    @conn ||= Faraday.new( url "https://localhost:3000")
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end