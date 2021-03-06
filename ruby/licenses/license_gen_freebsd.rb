#!/usr/bin/env ruby

# This tool is FreeBSD licensed.
# Run license_gen_freebsd YelloSoft 2009

# == Synopsis
#
# license_gen_freebsd: Generates FreeBSD licenses based on The FreeBSD Copyright:
#
# http://www.freebsd.org/copyright/freebsd-license.html
#
# == Usage
#
# license_gen_freebsd owners year [margin]
#
# Owners:
#    The copyright owners.
# Year:
#    The copyright year.
# Margin:
#    The width of the copyright message.

require 'time'

# From ttscoff's wrap_text()
# http://snipplr.com/view/1081/wrap-text/
class String
  def wrap(margin = 80)
    gsub(/(.{1,#{margin}})( +|$\n?)|(.{1,#{margin}})/, '\\1\\3\n')
  end
end

def self.gen(owners = 'The FreeBSD Project', year = Time.now.year, margin = 80)
  "FreeBSD License

Copyright #{year} #{owners}. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE AUTHORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.".wrap margin
end

def main
  argc = ARGV.length

  owners = 'The FreeBSD Project'
  year = '1994-2009'
  margin = 80

  owners = ARGV[0] unless argc < 1
  year = ARGV[1] unless argc < 2
  margin = ARGV[2] unless argc < 3

  puts gen(owners, year, margin)
end

main if $PROGRAM_NAME == __FILE__
