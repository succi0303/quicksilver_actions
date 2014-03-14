#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'

module QSActions

  class ParenQuote < ActionTemplate

    def update_text(text)
      updated_text = %Q('#{text}')
      return updated_text
    end

  end

end

if $0 == __FILE__

  text = ARGV[0]
  pq = QSActions::ParenQuote.new
  cmd = pq.execute_action(text)
  system cmd

end
