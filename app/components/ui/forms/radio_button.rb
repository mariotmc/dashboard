module Ui
  module Forms
    class RadioButton < ViewComponent::Base
      def initialize(form:, field:, label: nil, value:, checked: false, autofocus: false)
        @form = form
        @field = field
        @label = label
        @value = value
        @checked = checked
        @autofocus = autofocus
      end

      private
        attr_reader :form, :field, :label, :value, :checked, :autofocus
    end
  end
end
