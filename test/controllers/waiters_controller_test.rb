require 'test_helper'

class WaitersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @waiter = waiters(:one)
  end

  test "should get index" do
    get waiters_url, as: :json
    assert_response :success
  end

  test "should create waiter" do
    assert_difference('Waiter.count') do
      post waiters_url, params: { waiter: { image_url: @waiter.image_url, last_name: @waiter.last_name, menu_id: @waiter.menu_id, name: @waiter.name } }, as: :json
    end

    assert_response 201
  end

  test "should show waiter" do
    get waiter_url(@waiter), as: :json
    assert_response :success
  end

  test "should update waiter" do
    patch waiter_url(@waiter), params: { waiter: { image_url: @waiter.image_url, last_name: @waiter.last_name, menu_id: @waiter.menu_id, name: @waiter.name } }, as: :json
    assert_response 200
  end

  test "should destroy waiter" do
    assert_difference('Waiter.count', -1) do
      delete waiter_url(@waiter), as: :json
    end

    assert_response 204
  end
end
