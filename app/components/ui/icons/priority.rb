module Ui
  module Icons
    class Priority < Base
      def initialize(priority:)
        @priority = priority
      end

      private
        attr_reader :priority
    end
  end
end
