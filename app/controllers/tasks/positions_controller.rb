module Tasks
  class PositionsController < ApplicationController
    before_action :set_task
    before_action :set_stages

    def update
      @task.update!(row_order_position: params[:row_order_position], stage_id: params[:destination_stage_id])
    end

    private
      def set_task
        @task = Task.find(params[:id])
      end

      def set_stages
        @origin_stage = Stage.find(params[:origin_stage_id])
        @destination_stage = Stage.find(params[:destination_stage_id])
      end
  end
end
