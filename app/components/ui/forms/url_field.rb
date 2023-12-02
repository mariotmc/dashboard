module Ui
  module Forms
    class UrlField < Base
      def initialize(form:, field:, optional: false, autofocus: false)
        @form = form
        @field = field
        @optional = optional
        @autofocus = autofocus
        @collection = collection
      end

      private
        attr_reader :form, :field, :optional, :autofocus, :collection

        def collection
          case @field
          when :pull_request
           [["Github", "PullRequest::Github"]]
          when :external_task_tracker
           [["Linear", "ExternalTaskTracker::Linear"], ["Basecamp", "ExternalTaskTracker::Basecamp"]]
          end
        end
    end
  end
end
