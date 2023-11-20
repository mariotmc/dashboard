module Ui
  module Buttons
    class Back < ViewComponent::Base
      def initialize(text:, url:)
        @text = text
        @url = url
      end

      private
        attr_reader :text, :url
    end
  end
end
