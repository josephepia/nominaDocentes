require "application_system_test_case"

class PatentsTest < ApplicationSystemTestCase
  setup do
    @patent = patents(:one)
  end

  test "visiting the index" do
    visit patents_url
    assert_selector "h1", text: "Patents"
  end

  test "should create patent" do
    visit patents_url
    click_on "New patent"

    fill_in "Nombre", with: @patent.nombre
    fill_in "Patenttype", with: @patent.patenttype_id
    fill_in "User", with: @patent.user_id
    click_on "Create Patent"

    assert_text "Patent was successfully created"
    click_on "Back"
  end

  test "should update Patent" do
    visit patent_url(@patent)
    click_on "Edit this patent", match: :first

    fill_in "Nombre", with: @patent.nombre
    fill_in "Patenttype", with: @patent.patenttype_id
    fill_in "User", with: @patent.user_id
    click_on "Update Patent"

    assert_text "Patent was successfully updated"
    click_on "Back"
  end

  test "should destroy Patent" do
    visit patent_url(@patent)
    click_on "Destroy this patent", match: :first

    assert_text "Patent was successfully destroyed"
  end
end
