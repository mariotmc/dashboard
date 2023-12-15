class DashboardController < ApplicationController
  def index
    @stages = Stage.rank(:row_order)
  end

  private
    attr_reader :stages
end
