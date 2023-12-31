require "application_system_test_case"

class DegreesTest < ApplicationSystemTestCase
  setup do
    @degree = degrees(:one)
  end

  test "visiting the index" do
    visit degrees_url
    assert_selector "h1", text: "Degrees"
  end

  test "should create degree" do
    visit degrees_url
    click_on "New degree"

    fill_in "Degreetype", with: @degree.degreetype_id
    fill_in "Descripcion", with: @degree.descripcion
    fill_in "Nombre", with: @degree.nombre
    fill_in "User", with: @degree.user_id
    click_on "Create Degree"

    assert_text "Degree was successfully created"
    click_on "Back"
  end

  test "should update Degree" do
    visit degree_url(@degree)
    click_on "Edit this degree", match: :first

    fill_in "Degreetype", with: @degree.degreetype_id
    fill_in "Descripcion", with: @degree.descripcion
    fill_in "Nombre", with: @degree.nombre
    fill_in "User", with: @degree.user_id
    click_on "Update Degree"

    assert_text "Degree was successfully updated"
    click_on "Back"
  end

  test "should destroy Degree" do
    visit degree_url(@degree)
    click_on "Destroy this degree", match: :first

    assert_text "Degree was successfully destroyed"
  end
end
