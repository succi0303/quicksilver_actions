#!/usr/bin/env ruby
# encoding: utf-8
require 'cgi'

class HTMLEscape

  def escape(word)
    escaped_word = html_escape(word)
    cmd = construct_command(escaped_word)
    system cmd
  end

  def construct_command(word)
    quoted_word = %Q("#{word}")
    cmd_before = "echo"
    cmd_after = "| qs"
    cmd = [cmd_before, quoted_word, cmd_after]
    cmd.join(' ')
  end

  def html_escape(word)
    escaped_word = CGI.escapeHTML(word)
    escaped_word
  end

end

if $0 == __FILE__

  word = ARGV[0]
  he = HTMLEscape.new
  he.escape(word)

end
