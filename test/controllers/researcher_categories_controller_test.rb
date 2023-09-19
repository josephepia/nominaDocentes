require "test_helper"

class ResearcherCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @researcher_category = researcher_categories(:one)
  end

  test "should get index" do
    get researcher_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_researcher_category_url
    assert_response :success
  end

  test "should create researcher_category" do
    assert_difference("ResearcherCategory.count") do
      post researcher_categories_url, params: { researcher_category: { descripcion: @researcher_category.descripcion, puntaje: @researcher_category.puntaje } }
    end

    assert_redirected_to researcher_category_url(ResearcherCategory.last)
  end

  test "should show researcher_category" do
    get researcher_category_url(@researcher_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_researcher_category_url(@researcher_category)
    assert_response :success
  end

  test "should update researcher_category" do
    patch researcher_category_url(@researcher_category), params: { researcher_category: { descripcion: @researcher_category.descripcion, puntaje: @researcher_category.puntaje } }
    assert_redirected_to researcher_category_url(@researcher_category)
  end

  test "should destroy researcher_category" do
    assert_difference("ResearcherCategory.count", -1) do
      delete researcher_category_url(@researcher_category)
    end

    assert_redirected_to researcher_categories_url
  end
end
