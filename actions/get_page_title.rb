#!/usr/bin/env ruby
# encoding: utf-8

require 'open-uri'
require 'nokogiri'

class GetPageTitle

  def get_title(url)
    begin
      html = get_html_from_url(url)
    rescue
      msg = 'ページの取得に失敗しました'
      cmd = construct_command(msg)
      system cmd
    end

    title = get_title_from_html(html)
    cmd = construct_command(title)
    system cmd
  end

  private

  def construct_command(string)
    quoted_string = %Q("#{string}")
    cmd_before = 'echo'
    cmd_after = '| qs'
    cmd = [cmd_before, quoted_string, cmd_after]
    cmd.join(' ')
  end

  def get_html_from_url(url)
    html = open(url).read
    return html
  end

  def get_title_from_html(html)
    page = Nokogiri::HTML(html)
    page.title
  end

end

if $0 == __FILE__
  
  url = ARGV[0]
  gpt = GetPageTitle.new
  gpt.get_title(url)

end
