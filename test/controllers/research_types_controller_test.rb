require "test_helper"

class ResearchTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @research_type = research_types(:one)
  end

  test "should get index" do
    get research_types_url
    assert_response :success
  end

  test "should get new" do
    get new_research_type_url
    assert_response :success
  end

  test "should create research_type" do
    assert_difference("ResearchType.count") do
      post research_types_url, params: { research_type: { bono: @research_type.bono, nivel: @research_type.nivel, puntaje: @research_type.puntaje, semillero: @research_type.semillero } }
    end

    assert_redirected_to research_type_url(ResearchType.last)
  end

  test "should show research_type" do
    get research_type_url(@research_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_research_type_url(@research_type)
    assert_response :success
  end

  test "should update research_type" do
    patch research_type_url(@research_type), params: { research_type: { bono: @research_type.bono, nivel: @research_type.nivel, puntaje: @research_type.puntaje, semillero: @research_type.semillero } }
    assert_redirected_to research_type_url(@research_type)
  end

  test "should destroy research_type" do
    assert_difference("ResearchType.count", -1) do
      delete research_type_url(@research_type)
    end

    assert_redirected_to research_types_url
  end
end
