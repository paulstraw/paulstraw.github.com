module Jekyll
  module Ordinalize
    def ordinalize(number)
      if (11..13).include?(number.to_i.abs % 100)
        "th"
      else
        case number.to_i.abs % 10
          when 1; "st"
          when 2; "nd"
          when 3; "rd"
          else    "th"
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::Ordinalize)