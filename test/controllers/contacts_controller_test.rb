require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { person_one_email: @contact.person_one_email, person_one_name: @contact.person_one_name, person_one_phone: @contact.person_one_phone, person_one_position: @contact.person_one_position, person_three_email: @contact.person_three_email, person_three_name: @contact.person_three_name, person_three_phone: @contact.person_three_phone, person_three_position: @contact.person_three_position, person_two_email: @contact.person_two_email, person_two_name: @contact.person_two_name, person_two_phone: @contact.person_two_phone, person_two_position: @contact.person_two_position } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { person_one_email: @contact.person_one_email, person_one_name: @contact.person_one_name, person_one_phone: @contact.person_one_phone, person_one_position: @contact.person_one_position, person_three_email: @contact.person_three_email, person_three_name: @contact.person_three_name, person_three_phone: @contact.person_three_phone, person_three_position: @contact.person_three_position, person_two_email: @contact.person_two_email, person_two_name: @contact.person_two_name, person_two_phone: @contact.person_two_phone, person_two_position: @contact.person_two_position } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
