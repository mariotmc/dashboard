module Ui
  module Buttons
    class Complete < ViewComponent::Base
      def initialize(url:)
        @url = url
      end

      private
        attr_reader :url
    end
  end
end
