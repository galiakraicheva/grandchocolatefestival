json.extract! participant, :id, :stand_number, :need_chairs, :need_table, :event_contact_person_name, :event_contact_person_phone, :hygiene_person, :invitation_number, :correspondence_address, :badges_number, :participate_exhibit, :exhibit_items, :participate_lottary, :lottary_items, :participate_sampling, :sampling_hours, :electricity_consumption, :plugs_number, :car_registration_number, :printed_label, :gcf_website_name, :gcf_website_url, :gcf_website_description, :gcf_website_address, :participate_presentation, :presentation_topic, :presentation_speaker, :participant_comments, :terms_of_service, :created_at, :updated_at
json.url participant_url(participant, format: :json)
