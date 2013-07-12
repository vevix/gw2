module GW2
  class TP
    def logout
      response = request(
        action: "Get",
        ssl: true,
        url: "#{BASE_AUTH_URL}/logout",
        headers: {
          Cookie: "#{@session_key}"
        }
      )

      @session_key = nil
    end
  end
end
