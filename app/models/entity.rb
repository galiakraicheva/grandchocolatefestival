class Entity < ApplicationRecord
  has_many :invoices
  has_one :participant
  belongs_to :user, optional: true
  has_many :contacts

  validates :common_name, uniqueness: { case_sensitive: false }, presence: true
  validates :country, presence: true
end
