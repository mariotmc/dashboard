module Dashboard
  class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    def new
      @task = Task.new
      @task.build_pull_request
      @task.build_external_task_tracker
      @stage = params[:stage] || "backlog"
    end

    def create
      @task = Task.create(task_params)
      @task.user = User.find_by(email: "jon@doe.com")

      if @task.save
        redirect_to dashboard_task_path(@task)
      else
        @stage = task_params[:stage]
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @task.update(task_params)
        redirect_to dashboard_task_path(@task)
      else
        render :new, status: :unprocessable_entity
      end
    end

    def show
    end

    def destroy
      @task.destroy
    end

    private
      def task_params
        params.require(:task).permit(:user, :stage, :title, :priority, :due_at, :notes,
          external_task_tracker_attributes: [:id, :type, :link], pull_request_attributes: [:id, :type, :link])
      end

      def set_task
        @task = Task.find(params[:id])
      end
  end
end
