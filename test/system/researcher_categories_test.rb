require "application_system_test_case"

class ResearcherCategoriesTest < ApplicationSystemTestCase
  setup do
    @researcher_category = researcher_categories(:one)
  end

  test "visiting the index" do
    visit researcher_categories_url
    assert_selector "h1", text: "Researcher categories"
  end

  test "should create researcher category" do
    visit researcher_categories_url
    click_on "New researcher category"

    fill_in "Descripcion", with: @researcher_category.descripcion
    fill_in "Puntaje", with: @researcher_category.puntaje
    click_on "Create Researcher category"

    assert_text "Researcher category was successfully created"
    click_on "Back"
  end

  test "should update Researcher category" do
    visit researcher_category_url(@researcher_category)
    click_on "Edit this researcher category", match: :first

    fill_in "Descripcion", with: @researcher_category.descripcion
    fill_in "Puntaje", with: @researcher_category.puntaje
    click_on "Update Researcher category"

    assert_text "Researcher category was successfully updated"
    click_on "Back"
  end

  test "should destroy Researcher category" do
    visit researcher_category_url(@researcher_category)
    click_on "Destroy this researcher category", match: :first

    assert_text "Researcher category was successfully destroyed"
  end
end
