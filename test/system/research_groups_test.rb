require "application_system_test_case"

class ResearchGroupsTest < ApplicationSystemTestCase
  setup do
    @research_group = research_groups(:one)
  end

  test "visiting the index" do
    visit research_groups_url
    assert_selector "h1", text: "Research groups"
  end

  test "should create research group" do
    visit research_groups_url
    click_on "New research group"

    fill_in "Nombre", with: @research_group.nombre
    fill_in "Researchtype", with: @research_group.researchtype_id
    fill_in "User", with: @research_group.user_id
    click_on "Create Research group"

    assert_text "Research group was successfully created"
    click_on "Back"
  end

  test "should update Research group" do
    visit research_group_url(@research_group)
    click_on "Edit this research group", match: :first

    fill_in "Nombre", with: @research_group.nombre
    fill_in "Researchtype", with: @research_group.researchtype_id
    fill_in "User", with: @research_group.user_id
    click_on "Update Research group"

    assert_text "Research group was successfully updated"
    click_on "Back"
  end

  test "should destroy Research group" do
    visit research_group_url(@research_group)
    click_on "Destroy this research group", match: :first

    assert_text "Research group was successfully destroyed"
  end
end
