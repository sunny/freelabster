module Freelabster
  class API
    # Get a new token from the API.
    #
    # Takes a URL to an STL file, or a zip of STL files.
    # Returns a hash:
    #   { token: "f00b4r" }
    def get_token(url:)
      get_token_url = "https://api.freelabster.com/v1/happy3D/getToken"
      HTTP.get(get_token_url, params: { url: url }).parse
    end
  end
end
