require 'test_helper'

class ResearchUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @research_unit = research_units(:one)
  end

  test "should get index" do
    get research_units_url
    assert_response :success
  end

  test "should get new" do
    get new_research_unit_url
    assert_response :success
  end

  test "should create research_unit" do
    assert_difference('ResearchUnit.count') do
      post research_units_url, params: { research_unit: { description: @research_unit.description } }
    end

    assert_redirected_to research_unit_url(ResearchUnit.last)
  end

  test "should show research_unit" do
    get research_unit_url(@research_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_research_unit_url(@research_unit)
    assert_response :success
  end

  test "should update research_unit" do
    patch research_unit_url(@research_unit), params: { research_unit: { description: @research_unit.description } }
    assert_redirected_to research_unit_url(@research_unit)
  end

  test "should destroy research_unit" do
    assert_difference('ResearchUnit.count', -1) do
      delete research_unit_url(@research_unit)
    end

    assert_redirected_to research_units_url
  end
end
