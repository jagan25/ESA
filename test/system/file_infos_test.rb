require "application_system_test_case"

class FileInfosTest < ApplicationSystemTestCase
  setup do
    @file_info = file_infos(:one)
  end

  test "visiting the index" do
    visit file_infos_url
    assert_selector "h1", text: "File Infos"
  end

  test "creating a File info" do
    visit file_infos_url
    click_on "New File Info"

    fill_in "Checksum", with: @file_info.checksum
    fill_in "Parent", with: @file_info.parent_id
    fill_in "Path", with: @file_info.path
    fill_in "Redundant count", with: @file_info.redundant_count
    click_on "Create File info"

    assert_text "File info was successfully created"
    click_on "Back"
  end

  test "updating a File info" do
    visit file_infos_url
    click_on "Edit", match: :first

    fill_in "Checksum", with: @file_info.checksum
    fill_in "Parent", with: @file_info.parent_id
    fill_in "Path", with: @file_info.path
    fill_in "Redundant count", with: @file_info.redundant_count
    click_on "Update File info"

    assert_text "File info was successfully updated"
    click_on "Back"
  end

  test "destroying a File info" do
    visit file_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "File info was successfully destroyed"
  end
end
