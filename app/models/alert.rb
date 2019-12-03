class Alert < ApplicationRecord

  belongs_to :contact

  validates :title, presence: true, length: { in: 10..50 }
  validates :datetime, presence: true

end
