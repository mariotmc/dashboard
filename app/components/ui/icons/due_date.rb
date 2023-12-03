module Ui
  module Icons
    class DueDate < Base
      def initialize(due_date:, css: nil, icon_css: nil)
        @due_date = due_date
        @css = css
        @icon_css = icon_css
      end

      private
        attr_reader :due_date, :css, :icon_css
    end
  end
end
