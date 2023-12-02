module Dashboard
  class TasksList < Base
    def initialize(tasks:, title:, color:, icon:, url:)
      @tasks = tasks
      @title = title
      @color = color
      @icon = icon
      @url = url
    end

    private
      attr_reader :tasks, :title, :color, :icon, :url
  end
end
