class Participant < ApplicationRecord
  belongs_to :entity
  has_one :user
  has_one :external_user
  belongs_to :questionnaire, optional: true
end
