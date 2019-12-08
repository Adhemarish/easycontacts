class Tag < ApplicationRecord

  belongs_to :user

  has_many :note_tags
  has_many :notes, through: :note_tags

  validates :label, presence: true

  COULEURS = ['red-tag', 'orange-tag', 'yellow-tag', 'green-tag']

  include PgSearch
    pg_search_scope :search_label, against: [:label, :label],
    # for partial words
    using: {
      tsearch: {
        prefix: true
      }
    }
end
