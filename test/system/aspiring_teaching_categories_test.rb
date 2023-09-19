require "application_system_test_case"

class AspiringTeachingCategoriesTest < ApplicationSystemTestCase
  setup do
    @aspiring_teaching_category = aspiring_teaching_categories(:one)
  end

  test "visiting the index" do
    visit aspiring_teaching_categories_url
    assert_selector "h1", text: "Aspiring teaching categories"
  end

  test "should create aspiring teaching category" do
    visit aspiring_teaching_categories_url
    click_on "New aspiring teaching category"

    fill_in "Descripcion", with: @aspiring_teaching_category.descripcion
    fill_in "Puntaje", with: @aspiring_teaching_category.puntaje
    click_on "Create Aspiring teaching category"

    assert_text "Aspiring teaching category was successfully created"
    click_on "Back"
  end

  test "should update Aspiring teaching category" do
    visit aspiring_teaching_category_url(@aspiring_teaching_category)
    click_on "Edit this aspiring teaching category", match: :first

    fill_in "Descripcion", with: @aspiring_teaching_category.descripcion
    fill_in "Puntaje", with: @aspiring_teaching_category.puntaje
    click_on "Update Aspiring teaching category"

    assert_text "Aspiring teaching category was successfully updated"
    click_on "Back"
  end

  test "should destroy Aspiring teaching category" do
    visit aspiring_teaching_category_url(@aspiring_teaching_category)
    click_on "Destroy this aspiring teaching category", match: :first

    assert_text "Aspiring teaching category was successfully destroyed"
  end
end
