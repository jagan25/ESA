require "application_system_test_case"

class UserFileMappingsTest < ApplicationSystemTestCase
  setup do
    @user_file_mapping = user_file_mappings(:one)
  end

  test "visiting the index" do
    visit user_file_mappings_url
    assert_selector "h1", text: "User File Mappings"
  end

  test "creating a User file mapping" do
    visit user_file_mappings_url
    click_on "New User File Mapping"

    fill_in "File", with: @user_file_mapping.file_id
    fill_in "File name", with: @user_file_mapping.file_name
    fill_in "User", with: @user_file_mapping.user_id
    click_on "Create User file mapping"

    assert_text "User file mapping was successfully created"
    click_on "Back"
  end

  test "updating a User file mapping" do
    visit user_file_mappings_url
    click_on "Edit", match: :first

    fill_in "File", with: @user_file_mapping.file_id
    fill_in "File name", with: @user_file_mapping.file_name
    fill_in "User", with: @user_file_mapping.user_id
    click_on "Update User file mapping"

    assert_text "User file mapping was successfully updated"
    click_on "Back"
  end

  test "destroying a User file mapping" do
    visit user_file_mappings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User file mapping was successfully destroyed"
  end
end
