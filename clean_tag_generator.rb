#!/usr/bin/env ruby
# frozen_string_literal: true

tag = ARGV[0]

print tag.gsub("refs/heads/", "").gsub("/", "-")
