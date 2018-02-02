class Contact < ApplicationRecord
  belongs_to :entity

  def display_name
    person_phone
  end
end
