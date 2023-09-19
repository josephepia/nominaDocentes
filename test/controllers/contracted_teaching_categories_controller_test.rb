require "test_helper"

class ContractedTeachingCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contracted_teaching_category = contracted_teaching_categories(:one)
  end

  test "should get index" do
    get contracted_teaching_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_contracted_teaching_category_url
    assert_response :success
  end

  test "should create contracted_teaching_category" do
    assert_difference("ContractedTeachingCategory.count") do
      post contracted_teaching_categories_url, params: { contracted_teaching_category: { descripcion: @contracted_teaching_category.descripcion, medioTiempo: @contracted_teaching_category.medioTiempo, salario: @contracted_teaching_category.salario, tiempoCompleto: @contracted_teaching_category.tiempoCompleto } }
    end

    assert_redirected_to contracted_teaching_category_url(ContractedTeachingCategory.last)
  end

  test "should show contracted_teaching_category" do
    get contracted_teaching_category_url(@contracted_teaching_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_contracted_teaching_category_url(@contracted_teaching_category)
    assert_response :success
  end

  test "should update contracted_teaching_category" do
    patch contracted_teaching_category_url(@contracted_teaching_category), params: { contracted_teaching_category: { descripcion: @contracted_teaching_category.descripcion, medioTiempo: @contracted_teaching_category.medioTiempo, salario: @contracted_teaching_category.salario, tiempoCompleto: @contracted_teaching_category.tiempoCompleto } }
    assert_redirected_to contracted_teaching_category_url(@contracted_teaching_category)
  end

  test "should destroy contracted_teaching_category" do
    assert_difference("ContractedTeachingCategory.count", -1) do
      delete contracted_teaching_category_url(@contracted_teaching_category)
    end

    assert_redirected_to contracted_teaching_categories_url
  end
end
