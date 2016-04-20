#!/usr/bin/env ruby

require './logparse_module.rb'

match_ip = /\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b/
match_http_verb = /GET|HEAD|POST|PUT|DELETE|TRACE|CONNECT/
puts Logparse.new.count_actors_actions(match_ip, match_http_verb, 'log.file' )