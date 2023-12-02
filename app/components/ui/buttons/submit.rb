module Ui
  module Buttons
    class Submit < Base
      def initialize(form:, text:, css: nil)
        @form = form
        @text = text
        @css = css
      end

      private
        attr_reader :form, :text, :css
    end
  end
end
