data = {}

File.open('log.file').each do |line|
	ip_address = line.scan(/\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b/)
	# puts ip_address
	verb = line.scan(/GET|HEAD|POST|PUT|DELETE|TRACE|CONNECT/)
	# puts verb
	# puts data
	if data.key?(ip_address) && data[ip_address].key?(verb)
		# puts 'incrementing'
		data[ip_address][verb] = data[ip_address][verb] + 1
	else
		# puts 'setting'
		if data[ip_address].class == Hash
			data[ip_address][verb] = 1
		else
			data[ip_address] = {verb=> 1}
		end
	end
end

puts data