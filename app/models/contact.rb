class Contact < ApplicationRecord
  mount_uploader :avatar, PhotoUploader

  has_many :notes, dependent: :destroy
  has_many :alerts, dependent: :destroy
  has_many :tags, through: :notes

  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: /\A.*@.*\.[a-z]{2,3}\z/}, unless: Proc.new { |a| a.email.blank? }

  include PgSearch::Model
  pg_search_scope :search_any_word,
   against: [ :first_name, :last_name ],
   using: {
     tsearch: { prefix: true }
   }
end

# include PgSearch::Model
#   pg_search_scope :global_search,
#    against: [ :first_name, :last_name ],
#    using: {
#      tsearch: { prefix: true }
#    }
