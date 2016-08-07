require "spec_helper"

module Freelabster
  describe API do
    subject(:api) { described_class.new }

    describe "#get_token" do
      let(:url) { "http://example.com/file.stl" }

      it do
        stub_request(:get, "https://api.freelabster.com/v1/happy3D/" \
                           "getToken?url=http://example.com/file.stl")
          .to_return(status: 200,
                     body: '{"token":"f00bar"}',
                     headers: { "Content-Type" => "application/json" })

        expected_response = { "token" => "f00bar" }
        expect(api.get_token(url: url)).to eq(expected_response)
      end
    end
  end
end
