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

# For washington (one subset)
id_list = Array (139..148)
data = GenericNAC.data_collector(center_id: 'NWAC', zone_id_list: id_list)
write_data(directory: 'data/washington', center_id: 'NWAC', data: data)

# OREGON (2 subsets)
# => COAA
id_list = [205, 300]
data = GenericNAC.data_collector(
  center_id: 'COAA',
  zone_id_list: id_list
)
write_data(directory: 'data/oregon', center_id: 'COAA', data: data)

# => WAC
data = GenericNAC.data_collector(
  center_id: 'WAC',
  zone_id_list: [276]
)
write_data(directory: 'data/oregon', center_id: 'WAC', data: data)

# IDAHO (3 subsets)
# => Sawtooths
id_list = [293,294,295,296]
data = GenericNAC.data_collector(
  center_id: 'SNFAC',
  zone_id_list: id_list
)
write_data(
  directory: 'data/idaho',
  center_id: 'SNFAC',
  data: data
)

# => Panhandle
id_list = [138,149,272]
data = GenericNAC.data_collector(
  center_id: 'IPAC',
  zone_id_list: id_list
)
write_data(
  directory: 'data/idaho',
  center_id: 'IPAC',
  data: data
)

# => Payette (PAC)
id_list = [153]
data = GenericNAC.data_collector(
  center_id: 'PAC',
  zone_id_list: id_list
)
write_data(
  directory: 'data/idaho',
  center_id: 'PAC',
  data: data
)
