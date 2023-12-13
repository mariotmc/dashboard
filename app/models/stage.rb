class Stage < ApplicationRecord
  include RankedModel
  ranks :row_order

  has_many :tasks, dependent: :destroy

  def self.active
    find_by(status: "active")
  end

  def self.paused
    find_by(status: "paused")
  end

  def self.backlog
    find_by(status: "backlog")
  end
end
