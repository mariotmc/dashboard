class Task < ApplicationRecord
  include RankedModel
  ranks :row_order, with_same: :stage_id

  belongs_to :user
  belongs_to :stage

  has_rich_text :notes

  has_one :pull_request, dependent: :destroy
  has_one :external_task_tracker, dependent: :destroy

  accepts_nested_attributes_for :pull_request
  accepts_nested_attributes_for :external_task_tracker

  enum priority: [:low, :medium, :high]

  validates :title, presence: true

  scope :active, -> { Stage.active.tasks.where(completed_at: nil) }
  scope :paused, -> { Stage.paused.tasks.where(completed_at: nil) }
  scope :backlog, -> { Stage.backlog.tasks.where(completed_at: nil) }

  scope :due, -> { where.not(due_at: nil) }
  scope :completed, -> { where.not(completed_at: nil) }

  def due_at?
    due_at.present?
  end

  def pull_request_link?
    pull_request&.link.present?
  end

  def external_task_tracker_link?
    external_task_tracker&.link.present?
  end
end
