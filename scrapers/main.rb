# Main file to simply trigger other scrapers to pull their data

#require_relative 'US/washington/nac_washington'
require 'json'
require_relative 'US/generic_NAC.rb'

# Support functions
def write_data(directory:, center_id:, data:)
  # Make the subfolder if it doesn't exist
  Dir.mkdir(directory) unless Dir.exists?(directory)
  # Write the data to a file
  filename = directory + '/' + Date.today().to_s + "_#{center_id.to_s}.json"
  File.open(filename,"w") do |f|
    f.write(JSON.pretty_generate(data))
  end
end

# Master hash for generic scraping
master_hash = {
  'washington': {
    '1': {
      'id_list': [139,140,141,142,143,144,145,146,147,148],
      'center_id': 'NWAC'
    }
  },
  'oregon': {
    '1': {
      'id_list': [205, 300],
      'center_id': 'COAA'
    },
    '2': {
      'id_list': [276],
      'center_id': 'WAC'
    }
  },
  'idaho': {
    '1': {
      'id_list': [293,294,295,296],
      'center_id': 'SNFAC'
    },
    '2': {
      'id_list': [138,149,272],
      'center_id': 'IPAC'
    },
    '3': {
      'id_list': [153],
      'center_id': 'PAC'
    }
  }
}

# Now we loop through the master hash and
# trigger the generic scraper
master_hash.each do |state, zones|
  directory = "data/#{state}"
  zones.each do |zone_subset, zone_data|
    data = GenericNAC.data_collector(
      center_id: zone_data[:center_id],
      zone_id_list: zone_data[:id_list]
    )
    write_data(
      directory: directory,
      center_id: zone_data[:center_id],
      data: data
    )
  end
end
