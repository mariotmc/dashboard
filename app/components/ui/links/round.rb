module Ui
  module Links
    class Round < ViewComponent::Base
      def initialize(url:, icon:, css: nil, icon_css: nil)
        @url = url
        @icon = icon
        @css = css
        @icon_css = icon_css
      end

      private
        attr_reader :url, :icon, :css, :icon_css
    end
  end
end
