module Ui
  module Buttons
    class Action < Base
      def initialize(text: nil, icon: nil, url:, method:, data: {}, color:, css: nil)
        @text = text
        @icon = icon
        @url = url
        @method = method
        @data = data
        @color = color
        @css = css
      end

      private
        attr_reader :text, :icon, :url, :method, :data, :color, :css
    end
  end
end
