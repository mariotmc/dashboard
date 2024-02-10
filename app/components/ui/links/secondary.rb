module UI
  module Links
    class Secondary < Base
      def initialize(text: nil, url:, icon: nil, turbo_stream: "", turbo_frame: "_top", css: nil, icon_css: nil)
        @text = text
        @url = url
        @icon = icon
        @turbo_stream = turbo_stream
        @turbo_frame = turbo_frame
        @css = css
        @icon_css = icon_css
      end

      private
        attr_reader :text, :url, :icon, :turbo_stream, :turbo_frame, :css, :icon_css
    end
  end
end
