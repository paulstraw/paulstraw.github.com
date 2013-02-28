# Taken from this guy on Stack Overflow: http://stackoverflow.com/a/13664729
# Thanks, guy!
require 'date'
require 'facets/integer/ordinal'

module Jekyll
  module DateFilter
    def paulstraw_date(date)
      "#{date.strftime('%B')} #{date.strftime('%e').to_i.ordinalize}, #{date.strftime('%Y')}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::DateFilter)