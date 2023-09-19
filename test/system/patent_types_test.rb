require "application_system_test_case"

class PatentTypesTest < ApplicationSystemTestCase
  setup do
    @patent_type = patent_types(:one)
  end

  test "visiting the index" do
    visit patent_types_url
    assert_selector "h1", text: "Patent types"
  end

  test "should create patent type" do
    visit patent_types_url
    click_on "New patent type"

    fill_in "Descripcion", with: @patent_type.descripcion
    fill_in "Puntaje", with: @patent_type.puntaje
    click_on "Create Patent type"

    assert_text "Patent type was successfully created"
    click_on "Back"
  end

  test "should update Patent type" do
    visit patent_type_url(@patent_type)
    click_on "Edit this patent type", match: :first

    fill_in "Descripcion", with: @patent_type.descripcion
    fill_in "Puntaje", with: @patent_type.puntaje
    click_on "Update Patent type"

    assert_text "Patent type was successfully updated"
    click_on "Back"
  end

  test "should destroy Patent type" do
    visit patent_type_url(@patent_type)
    click_on "Destroy this patent type", match: :first

    assert_text "Patent type was successfully destroyed"
  end
end
