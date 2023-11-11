class Task < ApplicationRecord
  belongs_to :user

  has_rich_text :note

  enum priority: [:low, :medium, :high]

  validates :title, presence: true
end
