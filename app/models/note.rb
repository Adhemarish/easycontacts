class Note < ApplicationRecord

  belongs_to :contact

  has_many :note_tags, dependent: :destroy
  has_many :tags, through: :note_tags

  validates :content, presence: true
end
