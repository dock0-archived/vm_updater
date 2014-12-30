#!/usr/bin/env ruby

require 'octokit'
require 'yaml'

CONFIG_PATH = 'config.yaml'

Octokit.auto_paginate = true

config = YAML.load_file(CONFIG_PATH)
artifacts, org = config.values_at 'artifacts', 'org'

artifacts.map do |artifact|
  org = artifact['org'] || org
  name = artifact['name']
  old_version = artifact['version']
  artifact['version'] = Octokit.releases("#{org}/#{name}").first.tag_name
  if old_version != artifact['version']
    puts "Updating #{name} from #{old_version} to #{artifact['version']}"
  else
    puts "No update available for #{name}"
  end
  artifact
end
File.open(CONFIG_PATH, 'w') { |f| f << config.to_yaml }
