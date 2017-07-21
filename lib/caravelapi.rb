class PoloData
  include HTTParty
  $api_url = 'https://poloniex.com/public?command='

  def self.call_return_ticker
    PoloData.call_data("returnTicker")
  end

  private
  def self.call_data(api_param)
    response = HTTParty.get("#{$api_url}#{api_param}")
  end
end
