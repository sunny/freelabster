require "spec_helper"

module Freelabster
  describe API do
    subject(:api) { described_class.new }

    describe "#get_token" do
      let(:urls) { ["http://example.com/file.stl"] }

      it do
        stub_request(:post, "https://api.freelabster.com/v1/happy3D/getToken")
          .with(body: '{"urls":["http://example.com/file.stl"]}')
          .to_return(status: 200,
                     body: '{"token":"f00bar"}',
                     headers: { "Content-Type" => "application/json" })

        expected_response = { "token" => "f00bar" }
        expect(api.get_token(urls: urls)).to eq(expected_response)
      end
    end
  end
end
