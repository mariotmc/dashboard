module Ui
  module Buttons
    class Submit < ViewComponent::Base
      def initialize(text:, css: nil)
        @text = text
        @css = css
      end

      private
        attr_reader :text, :css
    end
  end
end
