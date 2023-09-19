require "test_helper"

class PatentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patent_type = patent_types(:one)
  end

  test "should get index" do
    get patent_types_url
    assert_response :success
  end

  test "should get new" do
    get new_patent_type_url
    assert_response :success
  end

  test "should create patent_type" do
    assert_difference("PatentType.count") do
      post patent_types_url, params: { patent_type: { descripcion: @patent_type.descripcion, puntaje: @patent_type.puntaje } }
    end

    assert_redirected_to patent_type_url(PatentType.last)
  end

  test "should show patent_type" do
    get patent_type_url(@patent_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_patent_type_url(@patent_type)
    assert_response :success
  end

  test "should update patent_type" do
    patch patent_type_url(@patent_type), params: { patent_type: { descripcion: @patent_type.descripcion, puntaje: @patent_type.puntaje } }
    assert_redirected_to patent_type_url(@patent_type)
  end

  test "should destroy patent_type" do
    assert_difference("PatentType.count", -1) do
      delete patent_type_url(@patent_type)
    end

    assert_redirected_to patent_types_url
  end
end
