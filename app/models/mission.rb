class Mission < ApplicationRecord
  belongs_to :scientist
  belongs_to :planet

  validates :name, presence: true
  validates_uniqueness_of :scientist, scope: :name

end
