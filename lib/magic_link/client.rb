require 'oauth2'

class MagicLink
  class Client
    def initialize key, secret, site = 'https://magiclink.io'
      @key = key
      @secret = secret
      @client = OAuth2::Client.new(key, secret, site: site)
    end

    def list
      token.get('/api/v1/authentications.json').parsed
    end

    def deliver email
      token.post('/api/v1/authentications.json', params: {
        authentication: {
          email: email
        }
      })
      true
    end

    def confirm access_token, confirmation_token
      token.post("/api/v1/authentications/#{access_token}.json", params: {
        authentication: {
          confirmation_token: confirmation_token
        }
      })
      true
    end

    private

    def token
      @client.client_credentials.get_token
    end
  end
end
