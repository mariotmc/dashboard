class Task < ApplicationRecord
  include RankedModel
  ranks :row_order, with_same: :stage_id

  belongs_to :user
  belongs_to :stage

  has_rich_text :notes

  has_one :pull_request, dependent: :destroy
  has_one :ticket, dependent: :destroy

  accepts_nested_attributes_for :pull_request
  accepts_nested_attributes_for :ticket

  enum priority: [:low, :medium, :high]

  validates :title, presence: true

  before_create :set_row_order

  scope :for_user, -> { where(user_id: Current.user.id) }

  scope :due, -> { where.not(due_at: nil) }
  scope :completed, -> { where.not(completed_at: nil) }
  scope :incompleted, -> { where(completed_at: nil) }

  def set_row_order
    stage.tasks.for_user.count + 1
  end

  def due_at?
    due_at.present?
  end

  def pull_request_link?
    pull_request&.link.present?
  end

  def ticket_link?
    ticket&.link.present?
  end
end
