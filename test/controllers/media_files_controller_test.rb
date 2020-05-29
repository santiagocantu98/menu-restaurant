require 'test_helper'

class MediaFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @media_file = media_files(:one)
  end

  test "should get index" do
    get media_files_url, as: :json
    assert_response :success
  end

  test "should create media_file" do
    assert_difference('MediaFile.count') do
      post media_files_url, params: { media_file: { type: @media_file.type, url: @media_file.url } }, as: :json
    end

    assert_response 201
  end

  test "should show media_file" do
    get media_file_url(@media_file), as: :json
    assert_response :success
  end

  test "should update media_file" do
    patch media_file_url(@media_file), params: { media_file: { type: @media_file.type, url: @media_file.url } }, as: :json
    assert_response 200
  end

  test "should destroy media_file" do
    assert_difference('MediaFile.count', -1) do
      delete media_file_url(@media_file), as: :json
    end

    assert_response 204
  end
end
