data = {}

File.open('data.in').each do |line|
	parts = line.tr('"', '').split(',')
	if data.key?(parts[1])
		data[parts[2]] = data[parts[2]] + parts[1]
	else
		data[parts[2]] = parts[1]
	end
end

puts data

