require 'test_helper'

class CalificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calification = califications(:one)
  end

  test "should get index" do
    get califications_url, as: :json
    assert_response :success
  end

  test "should create calification" do
    assert_difference('Calification.count') do
      post califications_url, params: { calification: { comment: @calification.comment, email: @calification.email, menu_id: @calification.menu_id, rating: @calification.rating, waiter_id: @calification.waiter_id } }, as: :json
    end

    assert_response 201
  end

  test "should show calification" do
    get calification_url(@calification), as: :json
    assert_response :success
  end

  test "should update calification" do
    patch calification_url(@calification), params: { calification: { comment: @calification.comment, email: @calification.email, menu_id: @calification.menu_id, rating: @calification.rating, waiter_id: @calification.waiter_id } }, as: :json
    assert_response 200
  end

  test "should destroy calification" do
    assert_difference('Calification.count', -1) do
      delete calification_url(@calification), as: :json
    end

    assert_response 204
  end
end
