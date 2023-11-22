module Ui
  module Forms
    class TextField < ViewComponent::Base
      def initialize(form:, field:, placeholder: nil, autofocus: false)
        @form = form
        @field = field
        @placeholder = placeholder
        @autofocus = autofocus
      end

      private
        attr_reader :form, :field, :placeholder, :autofocus
    end
  end
end
