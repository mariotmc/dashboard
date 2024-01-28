module Dashboard
  class TasksList < Base
    with_collection_parameter :stage

    STATUS = {
      active: { color: "emerald", icon: "play" },
      paused: { color: "amber", icon: "pause" },
      backlog: { color: "stone", icon: "stop" }
    }.freeze

    def initialize(stage:)
      @stage = stage
      set_attrs
    end

    private
      attr_reader :stage, :color, :icon

      def set_attrs
        attrs = STATUS[stage.status.to_sym]
        @color = attrs[:color]
        @icon = attrs[:icon]
      end
  end
end
