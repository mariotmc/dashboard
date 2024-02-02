module Tasks
  class CompletesController < ApplicationController
    before_action :set_task, only: [:update]

    def update
      @task.update!(completed_at: Date.today)

      redirect_to dashboard_index_path, notice: "Task successfully completed"
    end

    private
      def set_task
        @task = Task.find(params[:id])
      end
  end
end
