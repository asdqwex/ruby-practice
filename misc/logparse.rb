data = {}

File.foreach('log.file')  do |line|	
	ip_address = line.scan(/\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b/)
	verb = line.scan(/GET|HEAD|POST|PUT|DELETE|TRACE|CONNECT/)
	data[ip_address] = {} unless data.has_key? ip_address
	data[ip_address][verb] = 1 unless data[ip_address][verb]
	data[ip_address][verb] = data[ip_address][verb] + 1
end

puts data
