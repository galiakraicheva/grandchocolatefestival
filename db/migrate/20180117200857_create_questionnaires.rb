class CreateQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    create_table :questionnaires do |t|
      t.boolean :need_chairs
      t.boolean :need_table
      t.string :event_contact_person_name, null: false
      t.string :event_contact_person_phone, null: false
      t.string :hygiene_person, null: false
      t.integer :invitation_number
      t.string :correspondence_address, null: false
      t.integer :badges_number
      t.boolean :participate_exhibit
      t.string :exhibit_items
      t.boolean :participate_lottary
      t.string :lottary_items
      t.string :participate_sampling
      t.string :sampling_hours
      t.string :electricity_consumption, null: false
      t.integer :plugs_number, null: false
      t.string :car_registration_number, null: false
      t.string :printed_label, null: false
      t.string :gcf_website_name, null: false
      t.string :gcf_website_url
      t.string :gcf_website_description
      t.string :gcf_website_address
      t.boolean :participate_presentation
      t.string :presentation_topic
      t.string :presentation_speaker
      t.text :participant_comments
      t.boolean :terms_of_service, null: false

      t.timestamps
    end

    add_reference :participants, :questionnaire, foreign_key: true
  end
end
