require 'test_helper'

class QuestionnairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionnaire = questionnaires(:one)
  end

  test "should get index" do
    get questionnaires_url
    assert_response :success
  end

  test "should get new" do
    get new_questionnaire_url
    assert_response :success
  end

  test "should create questionnaire" do
    assert_difference('Questionnaire.count') do
      post questionnaires_url, params: { questionnaire: { badges_number: @questionnaire.badges_number, car_registration_number: @questionnaire.car_registration_number, correspondence_address: @questionnaire.correspondence_address, electricity_consumption: @questionnaire.electricity_consumption, event_contact_person_name: @questionnaire.event_contact_person_name, event_contact_person_phone: @questionnaire.event_contact_person_phone, exhibit_items: @questionnaire.exhibit_items, gcf_website_address: @questionnaire.gcf_website_address, gcf_website_description: @questionnaire.gcf_website_description, gcf_website_name: @questionnaire.gcf_website_name, gcf_website_url: @questionnaire.gcf_website_url, hygiene_person: @questionnaire.hygiene_person, invitation_number: @questionnaire.invitation_number, lottary_items: @questionnaire.lottary_items, need_chairs: @questionnaire.need_chairs, need_table: @questionnaire.need_table, participant_comments: @questionnaire.participant_comments, participate_exhibit: @questionnaire.participate_exhibit, participate_lottary: @questionnaire.participate_lottary, participate_presentation: @questionnaire.participate_presentation, participate_sampling: @questionnaire.participate_sampling, plugs_number: @questionnaire.plugs_number, presentation_speaker: @questionnaire.presentation_speaker, presentation_topic: @questionnaire.presentation_topic, printed_label: @questionnaire.printed_label, sampling_hours: @questionnaire.sampling_hours, terms_of_service: @questionnaire.terms_of_service } }
    end

    assert_redirected_to questionnaire_url(Questionnaire.last)
  end

  test "should show questionnaire" do
    get questionnaire_url(@questionnaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionnaire_url(@questionnaire)
    assert_response :success
  end

  test "should update questionnaire" do
    patch questionnaire_url(@questionnaire), params: { questionnaire: { badges_number: @questionnaire.badges_number, car_registration_number: @questionnaire.car_registration_number, correspondence_address: @questionnaire.correspondence_address, electricity_consumption: @questionnaire.electricity_consumption, event_contact_person_name: @questionnaire.event_contact_person_name, event_contact_person_phone: @questionnaire.event_contact_person_phone, exhibit_items: @questionnaire.exhibit_items, gcf_website_address: @questionnaire.gcf_website_address, gcf_website_description: @questionnaire.gcf_website_description, gcf_website_name: @questionnaire.gcf_website_name, gcf_website_url: @questionnaire.gcf_website_url, hygiene_person: @questionnaire.hygiene_person, invitation_number: @questionnaire.invitation_number, lottary_items: @questionnaire.lottary_items, need_chairs: @questionnaire.need_chairs, need_table: @questionnaire.need_table, participant_comments: @questionnaire.participant_comments, participate_exhibit: @questionnaire.participate_exhibit, participate_lottary: @questionnaire.participate_lottary, participate_presentation: @questionnaire.participate_presentation, participate_sampling: @questionnaire.participate_sampling, plugs_number: @questionnaire.plugs_number, presentation_speaker: @questionnaire.presentation_speaker, presentation_topic: @questionnaire.presentation_topic, printed_label: @questionnaire.printed_label, sampling_hours: @questionnaire.sampling_hours, terms_of_service: @questionnaire.terms_of_service } }
    assert_redirected_to questionnaire_url(@questionnaire)
  end

  test "should destroy questionnaire" do
    assert_difference('Questionnaire.count', -1) do
      delete questionnaire_url(@questionnaire)
    end

    assert_redirected_to questionnaires_url
  end
end
