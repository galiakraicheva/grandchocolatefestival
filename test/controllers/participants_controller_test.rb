require 'test_helper'

class ParticipantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @participant = participants(:one)
  end

  test "should get index" do
    get participants_url
    assert_response :success
  end

  test "should get new" do
    get new_participant_url
    assert_response :success
  end

  test "should create participant" do
    assert_difference('Participant.count') do
      post participants_url, params: { participant: { badges_number: @participant.badges_number, car_registration_number: @participant.car_registration_number, correspondence_address: @participant.correspondence_address, electricity_consumption: @participant.electricity_consumption, event_contact_person_name: @participant.event_contact_person_name, event_contact_person_phone: @participant.event_contact_person_phone, exhibit_items: @participant.exhibit_items, gcf_website_address: @participant.gcf_website_address, gcf_website_description: @participant.gcf_website_description, gcf_website_name: @participant.gcf_website_name, gcf_website_url: @participant.gcf_website_url, hygiene_person: @participant.hygiene_person, invitation_number: @participant.invitation_number, lottary_items: @participant.lottary_items, need_chairs: @participant.need_chairs, need_table: @participant.need_table, participant_comments: @participant.participant_comments, participate_exhibit: @participant.participate_exhibit, participate_lottary: @participant.participate_lottary, participate_presentation: @participant.participate_presentation, participate_sampling: @participant.participate_sampling, plugs_number: @participant.plugs_number, presentation_speaker: @participant.presentation_speaker, presentation_topic: @participant.presentation_topic, printed_label: @participant.printed_label, sampling_hours: @participant.sampling_hours, stand_number: @participant.stand_number, terms_of_service: @participant.terms_of_service } }
    end

    assert_redirected_to participant_url(Participant.last)
  end

  test "should show participant" do
    get participant_url(@participant)
    assert_response :success
  end

  test "should get edit" do
    get edit_participant_url(@participant)
    assert_response :success
  end

  test "should update participant" do
    patch participant_url(@participant), params: { participant: { badges_number: @participant.badges_number, car_registration_number: @participant.car_registration_number, correspondence_address: @participant.correspondence_address, electricity_consumption: @participant.electricity_consumption, event_contact_person_name: @participant.event_contact_person_name, event_contact_person_phone: @participant.event_contact_person_phone, exhibit_items: @participant.exhibit_items, gcf_website_address: @participant.gcf_website_address, gcf_website_description: @participant.gcf_website_description, gcf_website_name: @participant.gcf_website_name, gcf_website_url: @participant.gcf_website_url, hygiene_person: @participant.hygiene_person, invitation_number: @participant.invitation_number, lottary_items: @participant.lottary_items, need_chairs: @participant.need_chairs, need_table: @participant.need_table, participant_comments: @participant.participant_comments, participate_exhibit: @participant.participate_exhibit, participate_lottary: @participant.participate_lottary, participate_presentation: @participant.participate_presentation, participate_sampling: @participant.participate_sampling, plugs_number: @participant.plugs_number, presentation_speaker: @participant.presentation_speaker, presentation_topic: @participant.presentation_topic, printed_label: @participant.printed_label, sampling_hours: @participant.sampling_hours, stand_number: @participant.stand_number, terms_of_service: @participant.terms_of_service } }
    assert_redirected_to participant_url(@participant)
  end

  test "should destroy participant" do
    assert_difference('Participant.count', -1) do
      delete participant_url(@participant)
    end

    assert_redirected_to participants_url
  end
end
