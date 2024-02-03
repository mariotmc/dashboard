module UI
  module Forms
    class RadioGroup < Base
      def initialize(label:)
        @label = label
      end

      private
        attr_reader :label
    end
  end
end
