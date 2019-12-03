class Contact < ApplicationRecord

  has_many :notes, dependent: :destroy
  has_many :alerts, dependent: :destroy

  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: /\A.*@.*\.[a-z]{2,3}\z/ }
end
