require "spec_helper"

module Freelabster
  describe Cart do
    subject(:cart) { described_class.new(stl_url: stl_url, api: api) }
    let(:stl_url) { "http://example.com/file.stl" }
    let(:api) { instance_double API, get_token: { token: "f00b4r" } }

    describe "#url" do
      it "returns an URL to a Freelabster cart" do
        expect(cart.url)
          .to eq("https://www.freelabster.com/dashboard/order/cart" \
                 "?externalProject=f00b4r")
      end

      it "calls get_token on the API only once" do
        cart.url
        cart.url
        expect(api).to have_received(:get_token).once
      end
    end
  end
end
