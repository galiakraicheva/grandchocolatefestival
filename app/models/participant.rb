class Participant < ApplicationRecord
  belongs_to :entity
  belongs_to :questionnaire, optional: true

  validates :stand_number, presence: true
end
