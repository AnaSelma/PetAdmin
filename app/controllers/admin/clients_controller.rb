module Admin
  class ClientsController < Fae::BaseController
    private

    def build_assets
      @item.build_address if @item.address.blank?      
    end
    
  end
end
