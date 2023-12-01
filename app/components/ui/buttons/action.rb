module Ui
  module Buttons
    class Action < ViewComponent::Base
      def initialize(text: nil, icon: nil, url:, method:, color:, css: nil)
        @text = text
        @icon = icon
        @url = url
        @method = method
        @color = color
        @css = css
      end

      private
        attr_reader :text, :icon, :url, :method, :color, :css
    end
  end
end
