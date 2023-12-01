module Ui
  module Links
    class Primary < ViewComponent::Base
      def initialize(text: nil, url:, icon: nil, css: nil, icon_css: nil)
        @text = text
        @url = url
        @icon = icon
        @css = css
        @icon_css = icon_css
      end

      private
        attr_reader :text, :url, :icon, :css, :icon_css
    end
  end
end
