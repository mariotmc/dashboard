module Ui
  module Icons
    class Priority < ViewComponent::Base
      def initialize(priority:)
        @priority = priority
      end

      private
        attr_reader :priority
    end
  end
end
