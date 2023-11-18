module Dashboard
  class TasksList < ViewComponent::Base
    def initialize(stage:)
      @stage = stage
      @title = stage.capitalize
      set_variables(stage)
    end

    private
      attr_reader :tasks, :title, :color, :icon, :url

      def set_variables(stage)
        case stage
        when :active
          @tasks ||= Task.active
          @color ||= "emerald"
          @icon ||= "circle-half-stroke"
          @url ||= "new_dashboard_task_path?stage=active"
        when :paused
          @tasks ||= Task.paused
          @color ||= "amber"
          @icon ||= "circle-stop"
          @url ||= "new_dashboard_task_path?stage=paused"
        else
          @tasks ||= Task.backlog
          @color ||= "stone"
          @icon ||= "circle-dot"
          @url ||= "new_dashboard_task_path?stage=backlog"
        end
      end
  end
end
