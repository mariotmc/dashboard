module Ui
  module Forms
    class RadioGroup < ViewComponent::Base
      def initialize(label:)
        @label = label
      end

      private
        attr_reader :label
    end
  end
end
