require "test_helper"

class AspiringTeachingCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aspiring_teaching_category = aspiring_teaching_categories(:one)
  end

  test "should get index" do
    get aspiring_teaching_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_aspiring_teaching_category_url
    assert_response :success
  end

  test "should create aspiring_teaching_category" do
    assert_difference("AspiringTeachingCategory.count") do
      post aspiring_teaching_categories_url, params: { aspiring_teaching_category: { descripcion: @aspiring_teaching_category.descripcion, puntaje: @aspiring_teaching_category.puntaje } }
    end

    assert_redirected_to aspiring_teaching_category_url(AspiringTeachingCategory.last)
  end

  test "should show aspiring_teaching_category" do
    get aspiring_teaching_category_url(@aspiring_teaching_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_aspiring_teaching_category_url(@aspiring_teaching_category)
    assert_response :success
  end

  test "should update aspiring_teaching_category" do
    patch aspiring_teaching_category_url(@aspiring_teaching_category), params: { aspiring_teaching_category: { descripcion: @aspiring_teaching_category.descripcion, puntaje: @aspiring_teaching_category.puntaje } }
    assert_redirected_to aspiring_teaching_category_url(@aspiring_teaching_category)
  end

  test "should destroy aspiring_teaching_category" do
    assert_difference("AspiringTeachingCategory.count", -1) do
      delete aspiring_teaching_category_url(@aspiring_teaching_category)
    end

    assert_redirected_to aspiring_teaching_categories_url
  end
end
