require 'test_helper'

class InvestigationAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investigation_area = investigation_areas(:one)
  end

  test "should get index" do
    get investigation_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_investigation_area_url
    assert_response :success
  end

  test "should create investigation_area" do
    assert_difference('InvestigationArea.count') do
      post investigation_areas_url, params: { investigation_area: { description: @investigation_area.description } }
    end

    assert_redirected_to investigation_area_url(InvestigationArea.last)
  end

  test "should show investigation_area" do
    get investigation_area_url(@investigation_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_investigation_area_url(@investigation_area)
    assert_response :success
  end

  test "should update investigation_area" do
    patch investigation_area_url(@investigation_area), params: { investigation_area: { description: @investigation_area.description } }
    assert_redirected_to investigation_area_url(@investigation_area)
  end

  test "should destroy investigation_area" do
    assert_difference('InvestigationArea.count', -1) do
      delete investigation_area_url(@investigation_area)
    end

    assert_redirected_to investigation_areas_url
  end
end
