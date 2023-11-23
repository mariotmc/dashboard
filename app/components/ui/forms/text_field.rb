module Ui
  module Forms
    class TextField < ViewComponent::Base
      def initialize(form:, field:, placeholder: nil, optional: false, autofocus: false)
        @form = form
        @field = field
        @placeholder = placeholder
        @optional = optional
        @autofocus = autofocus
      end

      private
        attr_reader :form, :field, :placeholder, :optional, :autofocus
    end
  end
end
