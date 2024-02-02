module Dashboard
  class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]
    before_action :set_stage, only: [:new]

    def new
      @task = Task.new
      @task.build_pull_request
      @task.build_ticket
      @stage = Stage.find_by(status: params[:stage])
    end

    def create
      @task = Task.create(task_params)

      if @task.save
        redirect_to dashboard_task_path(@task), notice: "Task successfully saved"
      else
        @stage = Stage.find(task_params[:stage_id])
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @task.update(task_params)
        redirect_to dashboard_task_path(@task), notice: "Task successfully updated"
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def show
    end

    def destroy
      @task.destroy

      redirect_to dashboard_index_path, notice: "Task successfully deleted"
    end

    private
      def task_params
        params
          .require(:task)
          .permit(:stage_id, :title, :priority, :due_at, :notes,
          ticket_attributes: [:id, :type, :link], pull_request_attributes: [:id, :type, :link])
          .merge(user: Current.user)
      end

      def set_task
        @task = Task.find(params[:id])
      end

      def set_stage
        @stage = Stage.find_by(status: params[:stage])
      end
  end
end
