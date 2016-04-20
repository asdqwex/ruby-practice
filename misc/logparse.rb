#!/usr/bin/env ruby
def count_actors_actions(def_actor, def_action, data_source)
	data = {}
	File.foreach(data_source)  do |line|	
		actor = line.scan(def_actor)
		action = line.scan(def_action)
		data[actor] = {} unless data.has_key? actor
		data[actor][action] = 1 unless data[actor][action]
		data[actor][action] = data[actor][action] + 1
	end
	return data
end
match_ip = /\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b/
match_http_verb = /GET|HEAD|POST|PUT|DELETE|TRACE|CONNECT/
puts count_actors_actions(match_ip, match_http_verb, 'log.file' )