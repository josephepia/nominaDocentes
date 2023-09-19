require "application_system_test_case"

class ContractedTeachingCategoriesTest < ApplicationSystemTestCase
  setup do
    @contracted_teaching_category = contracted_teaching_categories(:one)
  end

  test "visiting the index" do
    visit contracted_teaching_categories_url
    assert_selector "h1", text: "Contracted teaching categories"
  end

  test "should create contracted teaching category" do
    visit contracted_teaching_categories_url
    click_on "New contracted teaching category"

    fill_in "Descripcion", with: @contracted_teaching_category.descripcion
    check "Mediotiempo" if @contracted_teaching_category.medioTiempo
    fill_in "Salario", with: @contracted_teaching_category.salario
    check "Tiempocompleto" if @contracted_teaching_category.tiempoCompleto
    click_on "Create Contracted teaching category"

    assert_text "Contracted teaching category was successfully created"
    click_on "Back"
  end

  test "should update Contracted teaching category" do
    visit contracted_teaching_category_url(@contracted_teaching_category)
    click_on "Edit this contracted teaching category", match: :first

    fill_in "Descripcion", with: @contracted_teaching_category.descripcion
    check "Mediotiempo" if @contracted_teaching_category.medioTiempo
    fill_in "Salario", with: @contracted_teaching_category.salario
    check "Tiempocompleto" if @contracted_teaching_category.tiempoCompleto
    click_on "Update Contracted teaching category"

    assert_text "Contracted teaching category was successfully updated"
    click_on "Back"
  end

  test "should destroy Contracted teaching category" do
    visit contracted_teaching_category_url(@contracted_teaching_category)
    click_on "Destroy this contracted teaching category", match: :first

    assert_text "Contracted teaching category was successfully destroyed"
  end
end
