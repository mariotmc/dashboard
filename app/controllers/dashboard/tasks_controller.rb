module Dashboard
  class TasksController < ApplicationController
    def new
      @task = Task.new
    end

    def create
      @task = Task.create(task_params)
    end

    private
      def task_params
        params.require(:task).permit(:title, :notes, :priority, :stage, :pull_request, :external_task_tracker, :due_at)
      end
  end
end
