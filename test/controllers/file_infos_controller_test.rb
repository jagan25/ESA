require 'test_helper'

class FileInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @file_info = file_infos(:one)
  end

  test "should get index" do
    get file_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_file_info_url
    assert_response :success
  end

  test "should create file_info" do
    assert_difference('FileInfo.count') do
      post file_infos_url, params: { file_info: { checksum: @file_info.checksum, parent_id: @file_info.parent_id, path: @file_info.path, redundant_count: @file_info.redundant_count } }
    end

    assert_redirected_to file_info_url(FileInfo.last)
  end

  test "should show file_info" do
    get file_info_url(@file_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_file_info_url(@file_info)
    assert_response :success
  end

  test "should update file_info" do
    patch file_info_url(@file_info), params: { file_info: { checksum: @file_info.checksum, parent_id: @file_info.parent_id, path: @file_info.path, redundant_count: @file_info.redundant_count } }
    assert_redirected_to file_info_url(@file_info)
  end

  test "should destroy file_info" do
    assert_difference('FileInfo.count', -1) do
      delete file_info_url(@file_info)
    end

    assert_redirected_to file_infos_url
  end
end
