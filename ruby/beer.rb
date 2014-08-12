#!/usr/bin/env ruby

require 'contracts'
include Contracts

Contract Num => String
def self.beer(i)
  if i >= 3
    "#{i} bottles of beer on the wall, #{i} bottles of beer.\n" +
      "Take one down, pass it around, #{i - 1} bottles of beer on the wall.\n\n"
  elsif i > 1
    "2 bottles of beer on the wall, 2 bottle of beer." +
      "Take one down, pass it around, 1 bottle of beer on the wall.\n\n"
  else
    "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end

def main
  99.downto(1) do |i|
    puts beer(i)
  end
end

main if $PROGRAM_NAME == __FILE__
