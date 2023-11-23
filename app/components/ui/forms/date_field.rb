module Ui
  module Forms
    class DateField < ViewComponent::Base
      def initialize(form:, field:, optional: false, autofocus: false)
        @form = form
        @field = field
        @optional = optional
        @autofocus = autofocus
      end

      private
        attr_reader :form, :field, :optional, :autofocus
    end
  end
end
