module Freelabster
  # Builds a Cart of STL files for a user on freelabster.com
  #
  # Example:
  #   cart = Freelabster::Cart.enw(stl_url: "http://example.com/file.stl")
  #   cart.url # => "https://www.freelabster.com/dashboard/order/cart?extern..."
  class Cart
    def initialize(stl_url:, api: API.new)
      @stl_url = stl_url
      @api = api
    end

    def url(params = {})
      uri = URI("https://www.freelabster.com/dashboard/order/cart")
      uri.query = URI.encode_www_form(params.merge(token: token))
      uri.to_s
    end

    private

    attr_reader :stl_url, :api

    def token
      @token ||= api.get_token(url: stl_url).fetch("token")
    end
  end
end
