class Questionnaire < ApplicationRecord
  has_one :participant
  validates :gcf_website_description, length: { maximum: 50 }

end
