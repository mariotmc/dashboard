module Tasks
  class PositionsController < ApplicationController
    before_action :set_task

    def update
      @task.update!(row_order_position: params[:row_order_position])
      head :no_content
    end

    private
      def set_task
        @task = Task.find(params[:id])
      end
  end
end
