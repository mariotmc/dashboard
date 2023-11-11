class Task < ApplicationRecord
  belongs_to :user

  enum priority: [:low, :medium, :high]

  validates :title, presence: true
end
