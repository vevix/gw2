module GW2
  class TP
    extend GW2
    BASE_AUTH_URL = "https://account.guildwars2.com"
    BASE_URL = "https://tradingpost-live.ncplatform.net",

    def initialize(attr = {})
      @email = attr[:email] || attr["email"]
      @password = attr[:password] || attr["password"]
    end
  end
end
