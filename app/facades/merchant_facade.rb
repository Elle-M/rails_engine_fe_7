class MerchantFacade
  def fetch_all_merchants
    data = MerchantService.new.fetch_merchants[:data]
    data.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end  

