module Ui
  module Buttons
    class Create < ViewComponent::Base
      def initialize(url:, css: nil)
        @url = url
        @css = css
      end

      private
        attr_reader :url, :css
    end
  end
end
