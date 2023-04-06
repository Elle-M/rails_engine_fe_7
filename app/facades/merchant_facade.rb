class MerchantFacade
  def fetch_all_merchants
    data = MerchantService.new.fetch_merchants[:data]
    data.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant_name(merchant_id)
    data = MerchantService.new.fetch_merchant_name(merchant_id)[:data]
    # require 'pry'; binding.pry
    Merchant.new(data)
  end

  def self.merchant_items(merchant_id)
    data = MerchantService.new.fetch_merchant_items(merchant_id)[:data]
    data.map do |item_data|
      Item.new(item_data)
    end
  end
end  

