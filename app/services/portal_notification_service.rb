class PortalNotificationService
  def self.notify
    uri = URI.parse(Settings.portal.url)
    header = {
        'Accept' => 'application/json',
        'Content-Type' => 'application/json',
        'X-Tile-Authorization' => Settings.portal.key
    }

    json = build_json

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Put.new(uri, header)
    request.body = json

    http.request(request)
  end

  private

  def self.build_json
    json = {
        "title": {"de": "MiData Wichtige Meldung"},
        "content": {"de": "123 456", "fr": "seich in franz"}
    }.to_json

    json
  end
end
