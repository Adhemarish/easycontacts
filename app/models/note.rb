class Note < ApplicationRecord

  belongs_to :contact

  has_many :note_tags, dependent: :destroy
  has_many :tags, through: :note_tags

  accepts_nested_attributes_for :tags
  validates :content, presence: true

end
