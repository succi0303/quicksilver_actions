#!/usr/bin/env ruby
# encoding: utf-8

require 'uri'

class URIDecode

  def decode(word)
    decoded_word = uri_decode(word)
    cmd = construct_command(decoded_word)
    system cmd
  end

  def construct_command(word)
    quoted_word = "'#{word}'"
    base_cmd_before = 'echo'
    base_cmd_after = '| qs'
    cmd = [base_cmd_before, quoted_word, base_cmd_after]
    cmd.join(' ')
  end

  def uri_decode(word)
    decoded_word = URI.decode(word).downcase
    return decoded_word
  end
end

if $0 == __FILE__

  word = ARGV[0]
  ue = URIDecode.new
  ue.decode(word)

end
