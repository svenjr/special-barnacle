# We know the Washington has great data and the structure is the same
# It follows this link format
# 	https://api.avalanche.org/v2/public/product?type=forecast&center_id=NWAC&zone_id=[]
# where the ID on the end goes through 9 regions in the range [139. 148]

require 'httparty'
require 'json'
require 'date'

id_start = 139
id_stop = 148

base_url = 'https://api.avalanche.org/v2/public/product?type=forecast&center_id=NWAC&zone_id='

master_store = {}

while id_start <= id_stop
  request = HTTParty.get(base_url + id_start.to_s)
  master_store[id_start] = JSON(request.body)
  id_start += 1
end

# Make the subfolder if it doesn't exist
directory = 'data/washington'
Dir.mkdir(directory) unless Dir.exists?(directory)
# Write the data to a file
filename = directory + '/' + Date.today().to_s + 'NWAC.json'
File.open(filename,"w") do |f|
  f.write(JSON.pretty_generate(master_store))
end
