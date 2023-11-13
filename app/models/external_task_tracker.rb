class ExternalTaskTracker < ApplicationRecord
  belongs_to :task

  has_one_attached :icon
end
