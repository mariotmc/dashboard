module Dashboard
  class TasksList < Base
    with_collection_parameter :stage

    def initialize(stage:)
      @stage = stage
      attrs
    end

    private
      attr_reader :stage, :color, :icon

      def attrs
        case stage.status
        when "active"
          @color = "emerald"
          @icon = "circle-half-stroke"
        when "paused"
          @color = "amber"
          @icon = "circle-stop"
        when "backlog"
          @color = "stone"
          @icon = "circle-dot"
        end
      end
  end
end
