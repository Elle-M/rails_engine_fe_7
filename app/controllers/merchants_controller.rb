class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.new.fetch_all_merchants
  end
end