module Ui
  module Forms
    class TextField < ViewComponent::Base
      def initialize(form:, field:, placeholder: nil)
        @form = form
        @field = field
        @placeholder = placeholder
      end

      private
        attr_reader :form, :field, :placeholder
    end
  end
end
