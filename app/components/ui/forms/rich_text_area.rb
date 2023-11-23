module Ui
  module Forms
    class RichTextArea < ViewComponent::Base
      def initialize(form:, field:, placeholder: nil, optional: false, autofocus: false)
        @form = form
        @field = field
        @placeholder = placeholder
        @optional = optional
        @autofocus = autofocus
      end

      private
        attr_reader :form, :field, :placeholder, :autofocus
    end
  end
end
