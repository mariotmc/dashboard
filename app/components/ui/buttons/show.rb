module Ui
  module Buttons
    class Show < ViewComponent::Base
      def initialize(url:, text: nil, icon: nil, css: nil)
        @url = url
        @text = text
        @icon = icon
        @css = css
      end

      private
        attr_reader :url, :text, :icon, :css
    end
  end
end
