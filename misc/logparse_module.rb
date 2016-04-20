#!/usr/bin/env ruby
class Logparse
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
end