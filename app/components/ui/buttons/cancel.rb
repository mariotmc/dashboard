module Ui
  module Buttons
    class Cancel < ViewComponent::Base
      def initialize(text:, url:, css: nil)
        @text = text
        @url = url
        @css = css
      end

      private
        attr_reader :text, :url, :css
    end
  end
end
