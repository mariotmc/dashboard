module Dashboard
  class TasksList < Base
    with_collection_parameter :stage

    STATUS = {
      active: { color: "emerald" },
      paused: { color: "amber" },
      waiting: { color: "rose" },
      backlog: { color: "stone" }
    }.freeze

    def initialize(stage:)
      @stage = stage
      set_attrs
    end

    private
      attr_reader :stage, :color

      def set_attrs
        attrs = STATUS[stage.status.to_sym]
        @color = attrs[:color]
      end
  end
end
