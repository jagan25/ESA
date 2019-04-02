require 'test_helper'

class UserFileMappingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_file_mapping = user_file_mappings(:one)
  end

  test "should get index" do
    get user_file_mappings_url
    assert_response :success
  end

  test "should get new" do
    get new_user_file_mapping_url
    assert_response :success
  end

  test "should create user_file_mapping" do
    assert_difference('UserFileMapping.count') do
      post user_file_mappings_url, params: { user_file_mapping: { file_id: @user_file_mapping.file_id, file_name: @user_file_mapping.file_name, user_id: @user_file_mapping.user_id } }
    end

    assert_redirected_to user_file_mapping_url(UserFileMapping.last)
  end

  test "should show user_file_mapping" do
    get user_file_mapping_url(@user_file_mapping)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_file_mapping_url(@user_file_mapping)
    assert_response :success
  end

  test "should update user_file_mapping" do
    patch user_file_mapping_url(@user_file_mapping), params: { user_file_mapping: { file_id: @user_file_mapping.file_id, file_name: @user_file_mapping.file_name, user_id: @user_file_mapping.user_id } }
    assert_redirected_to user_file_mapping_url(@user_file_mapping)
  end

  test "should destroy user_file_mapping" do
    assert_difference('UserFileMapping.count', -1) do
      delete user_file_mapping_url(@user_file_mapping)
    end

    assert_redirected_to user_file_mappings_url
  end
end
