class Stage < ApplicationRecord
  include RankedModel
  ranks :row_order

  has_many :tasks, dependent: :destroy

  scope :active, -> { where(status: "active") }
  scope :paused, -> { where(status: "paused") }
  scope :backlog, -> { where(status: "backlog") }
end
