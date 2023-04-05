class MerchantFacade
  def fetch_all_merchants
    data = MerchantService.new.fetch_merchants
    data.map do |merchant_name|
      items = merchant_name[:items]
    end
  end
end  

