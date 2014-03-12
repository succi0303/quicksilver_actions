#!/usr/bin/env ruby
# encoding: utf-8
require 'cgi'

class HTMLUnescape

  def unescape(word)
    unescape_word = html_unescape(word)
    cmd = construct_command(unescape_word)
    system cmd
  end

  def construct_command(word)
    quoted_word = %Q("#{word}")
    cmd_before = "echo"
    cmd_after = "| qs"
    cmd = [cmd_before, quoted_word, cmd_after]
    cmd.join(' ')
  end

  def html_unescape(word)
    unescaped_word = CGI.unescapeHTML(word)
    return unescaped_word
  end

end

if $0 == __FILE__

  word = ARGV[0]
  hu = HTMLUnescape.new
  hu.unescape(word)

end
