module GW2
  class TP
    def search(ids = [])
      response = request(
        action: "Get",
        ssl: true,
        url: "#{BASE_URL}/ws/search.json?ids=#{ids.join(",")}",
        headers: {
          Cookie: @session_key
        }
      )

      JSON.parse(response.body)
    end
  end
end
