class Task < ApplicationRecord
  belongs_to :user

  has_one :pull_request
  has_one :external_task_tracker

  has_rich_text :note

  enum priority: [:low, :medium, :high]
  enum stage: [:active, :paused, :backlog]

  validates :title, presence: true

  scope :active, -> { where(stage: 0) }
  scope :paused, -> { where(stage: 1) }
  scope :backlog, -> { where(stage: 2) }

  scope :due, -> { where.not(due_at: nil) }
  scope :completed, -> { where.not(completed_at: nil) }

  def pull_request_link?
    pull_request&.link.present?
  end

  def external_task_tracker_link?
    external_task_tracker&.link.present?
  end
end
