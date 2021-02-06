require 'httparty'
require 'json'

class GenericNAC
  BASE_URL = 'https://api.avalanche.org/v2/public/product?type=forecast&center_id='

  def self.data_collector(center_id:, zone_id_list:)
    # Data Collector takes a NAC center ID and zone ID
    # and returns the JSON from the API for that data
    data = {}
    zone_id_list.each do |id|
      url = url_constructor(center_id, id)

      # We need to rescue because some of the links
      # have broken data
      begin
        request = HTTParty.get(url)
        json_format = JSON(request.body)
      rescue
        p "URL returned bad data --> #{url}"
        data[id] = {NOTE: 'BAD DATA'}
      else
        data[id] = JSON(request.body)
      end
    end
    data
  end

  def self.url_constructor(center_id, zone_id)
    BASE_URL + center_id.to_s + '&zone_id=' + zone_id.to_s
  end
end