module Dashboard
  class TasksList < ViewComponent::Base
    def initialize(stage:)
      @stage = stage
      @tasks = tasks
      @title = title
      @color = color
      @icon = icon
    end

    def title
      @stage.capitalize
    end

    def tasks
      case @stage
      when :active
        @tasks ||= Task.active
      when :paused
        @tasks ||= Task.paused
      else
        @tasks ||= Task.backlog
      end
    end

    def color
      case @stage
      when :active
        @color = "emerald"
      when :paused
        @color = "amber"
      else
        @color = "stone"
      end
    end

    def icon
      case @stage
      when :active
        @icon = "circle-half-stroke"
      when :paused
        @icon = "circle-stop"
      else
        @icon = "circle-dot"
      end
    end
  end
end
