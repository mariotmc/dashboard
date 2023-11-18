class Icon < ViewComponent::Base
  def initialize(icon:, css: nil)
    @icon = icon
    @css = css
  end
end
