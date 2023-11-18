module Ui
  class Icon < ViewComponent::Base
    def initialize(icon:, css: nil)
      @icon = icon
      @css = css
    end

    private
      attr_reader :icon, :css
  end
end
