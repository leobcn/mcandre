#!/usr/bin/env ruby

# Author:: Andrew Pennebaker (andrew.pennebaker@gmail.com)
# Copyright:: Copyright 2008 Andrew Pennebaker

require "open-uri"
require "rubygems"
require "hpricot"
require "contracts"
include Contracts

Contract nil => String
def get_level
  f = open("http://www.dhs.gov/dhspublic/getAdvisoryCondition")
  data = f.read
  f.close

  h = Hpricot(data)
  h.search("threat_advisory").first[:condition]
end

def main
  puts get_level
end

if __FILE__ == $0
  begin
    main
  rescue Timeout::Error => e
    puts "Could not connect"
  rescue Interrupt => e
    nil
  end
end
