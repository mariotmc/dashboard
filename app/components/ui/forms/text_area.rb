module Ui
  module Forms
    class TextArea < ViewComponent::Base
      def initialize(form:, field:, placeholder: nil, autofocus: false, rows: 4)
        @form = form
        @field = field
        @placeholder = placeholder
        @autofocus = autofocus
        @rows = rows
      end

      private
        attr_reader :form, :field, :placeholder, :autofocus, :rows
    end
  end
end
