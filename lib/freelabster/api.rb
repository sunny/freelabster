module Freelabster
  # Handles all calls to Freelabster's API.
  class API
    # Get a new token from the API.
    #
    # Takes an array of URLs to 3D files and returns a hash:
    #
    # Example:
    #     API.get_token(urls: ["http://example.com/file.stl"])
    #     # => { token: "f00b4r" }
    def get_token(urls:)
      get_token_url = "https://api.freelabster.com/v1/happy3D/getToken"
      HTTP.post(get_token_url, json: { urls: urls }).parse
    end
  end
end
