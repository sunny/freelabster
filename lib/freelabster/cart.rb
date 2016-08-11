module Freelabster
  # Builds a Cart of 3D files for a user.
  #
  # Example:
  #     cart = Freelabster::Cart.new(file_urls: "http://example.com/file.stl")
  class Cart
    def initialize(file_urls:, api: API.new)
      @file_urls = file_urls
      @api = api
    end

    # Returns the user-facing URL for the cart
    # Takes extra custom parameters you may want to add to the URL.
    #
    # Example:
    #    cart.url
    #    # => "https://www.freelabster.com/dashboard/order/?token=zaef..."
    #    cart.url(foo: 1)
    #    # => "https://www.freelabster.com/dashboard/order/?foo=1&token=zaef..."
    def url(params = {})
      uri = URI("https://www.freelabster.com/dashboard/order/cart")
      uri.query = URI.encode_www_form(params.merge(token: token))
      uri.to_s
    end

    private

    attr_reader :file_urls, :api

    def token
      @token ||= api.get_token(urls: file_urls).fetch("token")
    end
  end
end
