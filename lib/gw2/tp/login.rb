module GW2
  class TP
    def login
      response = request(
        action: "Post",
        ssl: true,
        url: "https://account.guildwars2.com/login",
        headers: {
          Referer: "#{BASE_AUTH_URL}/login?redirect_uri=https://www.guildwars2.com/en/",
        },
        form_data: {
          email: @email,
          password: @password,
        }
      )

      @session_key = response.header['Set-Cookie'].split(";")[0]
    end
  end
end
