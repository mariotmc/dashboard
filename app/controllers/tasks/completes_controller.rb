module Tasks
  class CompletesController < ApplicationController
    before_action :set_task, only: [:update]

    def update
      @task.update!(completed_at: Date.today)
    end

    private
      def set_task
        @task = Task.find(params[:id])
      end
  end
end
