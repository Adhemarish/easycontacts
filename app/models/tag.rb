class Tag < ApplicationRecord

  belongs_to :user

  has_many :note_tags
  has_many :notes, through: :note_tags

  validates :label, presence: true

  COULEURS = ['red-tag', 'orange-tag', 'yellow-tag', 'green-tag']

end
