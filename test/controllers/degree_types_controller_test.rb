require "test_helper"

class DegreeTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @degree_type = degree_types(:one)
  end

  test "should get index" do
    get degree_types_url
    assert_response :success
  end

  test "should get new" do
    get new_degree_type_url
    assert_response :success
  end

  test "should create degree_type" do
    assert_difference("DegreeType.count") do
      post degree_types_url, params: { degree_type: { bono: @degree_type.bono, descripcion: @degree_type.descripcion, nivel: @degree_type.nivel, posgrado: @degree_type.posgrado, puntaje: @degree_type.puntaje } }
    end

    assert_redirected_to degree_type_url(DegreeType.last)
  end

  test "should show degree_type" do
    get degree_type_url(@degree_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_degree_type_url(@degree_type)
    assert_response :success
  end

  test "should update degree_type" do
    patch degree_type_url(@degree_type), params: { degree_type: { bono: @degree_type.bono, descripcion: @degree_type.descripcion, nivel: @degree_type.nivel, posgrado: @degree_type.posgrado, puntaje: @degree_type.puntaje } }
    assert_redirected_to degree_type_url(@degree_type)
  end

  test "should destroy degree_type" do
    assert_difference("DegreeType.count", -1) do
      delete degree_type_url(@degree_type)
    end

    assert_redirected_to degree_types_url
  end
end
