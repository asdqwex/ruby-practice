data = {}

File.open('data.in').each do |line|
	parts = line.tr('"', '').split(',')
	if data.key?(parts[2])
		data[parts[2]] = data[parts[2]] + parts[1].to_i
	else
		data[parts[2]] = parts[1].to_i
	end
end

puts data

