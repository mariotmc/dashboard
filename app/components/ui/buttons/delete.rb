module Ui
  module Buttons
    class Delete < ViewComponent::Base
      def initialize(url:)
        @url = url
      end

      private
        attr_reader :url
    end
  end
end
