class Questionnaire < ApplicationRecord
  has_one :participant

  validates :event_contact_person_name, presence: true
  validates :event_contact_person_phone, presence: true
  validates :hygiene_person, presence: true
  validates :correspondence_address, presence: true
  validates :badges_number, numericality: { greater_than: 0, allow_nil: true,
      message: " Броят баджове трябва да е положително число или 0." }
  validates :electricity_consumption, presence: true
  validates :plugs_number, presence: true, numericality: { greater_than: 0,
      message: " Броят баджове трябва да е положително число или 0." }
  validates :car_registration_number, presence: true
  validates :printed_label, presence: true
  validates :gcf_website_name, presence: true
  validates :gcf_website_description, length: { maximum: 50,
    too_long: "%{count} знака е максималният брой." }
  validates :terms_of_service, acceptance: true, presence: true

end
