class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(publishable_token: 'Tpk_c24aebfa94f54940af03a06b1074193e',
                                      endpoint: 'https://sandbox.iexapis.com/v1')
        client.price(ticker_symbol)                                      
    end

end

# iex_client:
#   sandbox_api_key: "Tpk_c24aebfa94f54940af03a06b1074193e"
#   client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
