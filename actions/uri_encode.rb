#!/usr/bin/env ruby
# encoding: utf-8

require 'uri'

class URIEncode

  def encode(word)
    encoded_word = uri_encode(word)
    cmd = construct_command(encoded_word)
    system cmd
  end

  def construct_command(word)
    quoted_word = "'#{word}'"
    base_cmd_before = 'echo'
    base_cmd_after =  '| qs'
    cmd = [base_cmd_before, quoted_word, base_cmd_after]
    cmd.join(' ')
  end

  def uri_encode(word)
    encoded_word = URI.encode(word).downcase
    return encoded_word
  end

end

if $0 == __FILE__

  word = ARGV[0]
  ue = URIEncode.new
  ue.encode(word)

end
