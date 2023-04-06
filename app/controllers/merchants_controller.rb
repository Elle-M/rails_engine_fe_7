class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.new.fetch_all_merchants
  # require 'pry'; binding.pry
  end

  def show
    @merchant = MerchantFacade.merchant_name(params[:id])
    @merchant_items = MerchantFacade.merchant_items(params[:id])
  end
end