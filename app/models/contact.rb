class Contact < ApplicationRecord

  has_many :notes, dependent: :destroy
  has_many :alerts, dependent: :destroy

  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: /\A.*@.*\.[a-z]{2,3}\z/ }

  include PgSearch:
  pg_search_scope :search_by_first_name_and_last_name,
   against: [ :first_name, :last_name ],
   using: {
     tsearch: { prefix: true }
   }
end
