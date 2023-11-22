module Ui
  module Forms
    class UrlField < ViewComponent::Base
      def initialize(form:, field:, type:, optional: true, autofocus: false)
        @form = form
        @field = field
        @type = type
        @optional = optional
        @autofocus = autofocus
        @collection = collection
      end

      private
        attr_reader :form, :field, :type, :optional, :autofocus, :collection

        def collection
          case @type
          when :pull_request
           [["Github", "PullRequest::Github"]]
          when :external_task_tracker
           [["Linear", "ExternalTaskTracker::Linear"], ["Basecamp", "ExternalTaskTracker::Basecamp"]]
          end
        end
    end
  end
end
