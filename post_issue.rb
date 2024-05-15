#!/usr/bin/env ruby

require 'dotenv/load'
require 'octokit'

access_token = ENV['ACCESS_TOKEN']
client = Octokit::Client.new(:access_token => access_token)

repo = 'takano32/post_issue'

title = 'たいとる'
body = <<~EOF
ほんぶん
EOF

labels = []

# create github issue
client.create_issue(repo, title, body, {labels: labels})

