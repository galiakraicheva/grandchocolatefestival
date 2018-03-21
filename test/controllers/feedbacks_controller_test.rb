require 'test_helper'

class FeedbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feedback = feedbacks(:one)
  end

  test "should get index" do
    get feedbacks_url
    assert_response :success
  end

  test "should get new" do
    get new_feedback_url
    assert_response :success
  end

  test "should create feedback" do
    assert_difference('Feedback.count') do
      post feedbacks_url, params: { feedback: { ad_coverage: @feedback.ad_coverage, comments: @feedback.comments, communication_with_organizer: @feedback.communication_with_organizer, communication_with_visitors: @feedback.communication_with_visitors, media_coverage: @feedback.media_coverage, organization_improvements: @feedback.organization_improvements, participation_improvements: @feedback.participation_improvements, stand_attractions: @feedback.stand_attractions, stand_price: @feedback.stand_price, stand_size: @feedback.stand_size, visitor_interest: @feedback.visitor_interest, visitor_number: @feedback.visitor_number, year_participation: @feedback.year_participation } }
    end

    assert_redirected_to feedback_url(Feedback.last)
  end

  test "should show feedback" do
    get feedback_url(@feedback)
    assert_response :success
  end

  test "should get edit" do
    get edit_feedback_url(@feedback)
    assert_response :success
  end

  test "should update feedback" do
    patch feedback_url(@feedback), params: { feedback: { ad_coverage: @feedback.ad_coverage, comments: @feedback.comments, communication_with_organizer: @feedback.communication_with_organizer, communication_with_visitors: @feedback.communication_with_visitors, media_coverage: @feedback.media_coverage, organization_improvements: @feedback.organization_improvements, participation_improvements: @feedback.participation_improvements, stand_attractions: @feedback.stand_attractions, stand_price: @feedback.stand_price, stand_size: @feedback.stand_size, visitor_interest: @feedback.visitor_interest, visitor_number: @feedback.visitor_number, year_participation: @feedback.year_participation } }
    assert_redirected_to feedback_url(@feedback)
  end

  test "should destroy feedback" do
    assert_difference('Feedback.count', -1) do
      delete feedback_url(@feedback)
    end

    assert_redirected_to feedbacks_url
  end
end
