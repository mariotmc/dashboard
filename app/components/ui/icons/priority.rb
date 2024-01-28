module Ui
  module Icons
    class Priority < Base
      def initialize(priority:, icon_css: nil)
        @priority = priority
        @icon_css = icon_css
      end

      private
        attr_reader :priority, :icon_css
    end
  end
end
