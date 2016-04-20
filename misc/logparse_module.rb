#!/usr/bin/env ruby
class Logparse
	def count_actors_actions(actor_regex, action_regex, data_source)
		data = {}
		File.foreach(data_source) do |line|	
			actor = line.scan(actor_regex)
			action = line.scan(action_regex)
			data[actor] = {} unless data.has_key? actor
			data[actor][action] = 0 unless data[actor][action]
			data[actor][action] = data[actor][action] + 1
		end
		return data
	end
end