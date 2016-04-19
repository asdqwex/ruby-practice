out_file = open('data.out', 'w')

File.open('data.in').each do |line|
	parts = line.split(',')
	parts[1] = parts[1].to_s.tr('09', '10')
	out_file.puts(parts.join(','))
end