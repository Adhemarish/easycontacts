class Alert < ApplicationRecord

  belongs_to :contact

  validates :title, presence: true, length: { in: 1..50 }
  validates :datetime, presence: true

end
