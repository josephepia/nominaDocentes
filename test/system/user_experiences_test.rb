require "application_system_test_case"

class UserExperiencesTest < ApplicationSystemTestCase
  setup do
    @user_experience = user_experiences(:one)
  end

  test "visiting the index" do
    visit user_experiences_url
    assert_selector "h1", text: "User experiences"
  end

  test "should create user experience" do
    visit user_experiences_url
    click_on "New user experience"

    fill_in "Anos", with: @user_experience.anos
    fill_in "Experience", with: @user_experience.experience_id
    fill_in "User", with: @user_experience.user_id
    click_on "Create User experience"

    assert_text "User experience was successfully created"
    click_on "Back"
  end

  test "should update User experience" do
    visit user_experience_url(@user_experience)
    click_on "Edit this user experience", match: :first

    fill_in "Anos", with: @user_experience.anos
    fill_in "Experience", with: @user_experience.experience_id
    fill_in "User", with: @user_experience.user_id
    click_on "Update User experience"

    assert_text "User experience was successfully updated"
    click_on "Back"
  end

  test "should destroy User experience" do
    visit user_experience_url(@user_experience)
    click_on "Destroy this user experience", match: :first

    assert_text "User experience was successfully destroyed"
  end
end
