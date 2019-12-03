class Tag < ApplicationRecord

  belongs_to :user

  has_many :note_tags
  has_many :notes, through: :note_tags

  validates :label, presence: true
end
