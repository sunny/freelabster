require "spec_helper"

module Freelabster
  describe Cart do
    subject(:cart) { described_class.new(file_urls: file_urls, api: api) }
    let(:file_urls) { ["http://example.com/file.stl"] }
    let(:api) { instance_double API, get_token: { "token" => "f00b4r" } }

    describe "#url" do
      it "returns an URL to a Freelabster cart" do
        expect(cart.url)
          .to eq("https://www.freelabster.com/dashboard/order/cart" \
                 "?token=f00b4r")
      end

      it "calls get_token with the correct params on the API " do
        cart.url
        expect(api).to have_received(:get_token).with(urls: file_urls)
      end

      it "calls get_token on the API only once" do
        cart.url
        cart.url
        expect(api).to have_received(:get_token).once
      end

      it "adds extra parameters to the url" do
        url = cart.url(extra: "foo", bar: 1)
        expect(URI(url).query).to eq("extra=foo&bar=1&token=f00b4r")
      end
    end
  end
end
