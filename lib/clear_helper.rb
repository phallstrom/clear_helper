# ClearHelper

module ActionView
  module Helpers
    module TagHelper

      #
      # 
      #
      def clear(what = 'both', height = '0')
        unless %w[left right both].include?(what.to_s)
          height = what
          what = 'both'
        end
        if height.to_i.to_s == height.to_s
          height = "#{height}px" unless height.to_s == '0'
        end
        %Q{<div style="clear:#{what}; height: #{height}; max-height: #{height}; font-size: #{height}; line-height: #{height};">&nbsp;</div>}
      end

    end
  end
end
