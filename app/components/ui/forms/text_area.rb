module UI
  module Forms
    class TextArea < Base
      def initialize(form:, field:, placeholder: nil, optional: false, autofocus: false, rows: 4)
        @form = form
        @field = field
        @placeholder = placeholder
        @optional = optional
        @autofocus = autofocus
        @rows = rows
      end

      private
        attr_reader :form, :field, :placeholder, :optional, :autofocus, :rows
    end
  end
end
