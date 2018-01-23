json.extract! contact, :id, :person_one_name, :person_one_phone, :person_one_email, :person_one_position, :person_two_name, :person_two_phone, :person_two_email, :person_two_position, :person_three_name, :person_three_phone, :person_three_email, :person_three_position, :created_at, :updated_at
json.url contact_url(contact, format: :json)
