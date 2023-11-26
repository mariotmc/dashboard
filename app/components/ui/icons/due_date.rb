module Ui
  module Icons
    class DueDate < ViewComponent::Base
      def initialize(due_date:)
        @due_date = due_date
      end

      private
        attr_reader :due_date
    end
  end
end
