module Ui
  module Links
    class Round < Base
      def initialize(url:, icon:, turbo_frame: "_top", css: nil, icon_css: nil)
        @url = url
        @icon = icon
        @turbo_frame = turbo_frame
        @css = css
        @icon_css = icon_css
      end

      private
        attr_reader :url, :icon, :turbo_frame, :css, :icon_css
    end
  end
end
