class Task < ApplicationRecord
  belongs_to :user

  has_one :pull_request

  has_rich_text :note

  enum priority: [:low, :medium, :high]
  enum stage: [:active, :paused, :backlog]

  validates :title, presence: true
end
