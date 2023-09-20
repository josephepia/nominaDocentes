require "application_system_test_case"

class DegreeTypesTest < ApplicationSystemTestCase
  setup do
    @degree_type = degree_types(:one)
  end

  test "visiting the index" do
    visit degree_types_url
    assert_selector "h1", text: "Degree types"
  end

  test "should create degree type" do
    visit degree_types_url
    click_on "New degree type"

    fill_in "Bono", with: @degree_type.bono
    fill_in "Descripcion", with: @degree_type.descripcion
    fill_in "Nivel", with: @degree_type.nivel
    check "Posgrado" if @degree_type.posgrado
    fill_in "Puntaje", with: @degree_type.puntaje
    click_on "Create Degree type"

    assert_text "Degree type was successfully created"
    click_on "Back"
  end

  test "should update Degree type" do
    visit degree_type_url(@degree_type)
    click_on "Edit this degree type", match: :first

    fill_in "Bono", with: @degree_type.bono
    fill_in "Descripcion", with: @degree_type.descripcion
    fill_in "Nivel", with: @degree_type.nivel
    check "Posgrado" if @degree_type.posgrado
    fill_in "Puntaje", with: @degree_type.puntaje
    click_on "Update Degree type"

    assert_text "Degree type was successfully updated"
    click_on "Back"
  end

  test "should destroy Degree type" do
    visit degree_type_url(@degree_type)
    click_on "Destroy this degree type", match: :first

    assert_text "Degree type was successfully destroyed"
  end
end
