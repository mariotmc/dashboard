module Stages
  class PositionsController < ApplicationController
    before_action :set_stage

    def update
      @stage.update!(row_order_position: params[:row_order_position])
      head :no_content
    end

    private
      def set_stage
        @stage = Stage.find(params[:id])
      end
  end
end
