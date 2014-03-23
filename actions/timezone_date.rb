#!/usr/bin/env ruby
# encoding: utf-8

require_relative './lib_qs_actions/qs_actions'

# @author succi0303
module QSActions

  class TimezoneDate < ActionTemplate

    def update_text(text)
      updated_text = timezone_date(text)
      return updated_text
    end

    def timezone_date(locale)
      locale_date = `TZ=#{locale} date`
      return locale_date
    end

  end
end

if $0 == __FILE__

  text = ARGV[0]
  td = QSActions::TimezoneDate.new
  cmd = td.execute_action(text)
  system cmd
end
