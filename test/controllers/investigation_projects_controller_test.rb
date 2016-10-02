require 'test_helper'

class InvestigationProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investigation_project = investigation_projects(:one)
  end

  test "should get index" do
    get investigation_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_investigation_project_url
    assert_response :success
  end

  test "should create investigation_project" do
    assert_difference('InvestigationProject.count') do
      post investigation_projects_url, params: { investigation_project: { investigator_id: @investigation_project.investigator_id, investigator_type: @investigation_project.investigator_type, project_id: @investigation_project.project_id } }
    end

    assert_redirected_to investigation_project_url(InvestigationProject.last)
  end

  test "should show investigation_project" do
    get investigation_project_url(@investigation_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_investigation_project_url(@investigation_project)
    assert_response :success
  end

  test "should update investigation_project" do
    patch investigation_project_url(@investigation_project), params: { investigation_project: { investigator_id: @investigation_project.investigator_id, investigator_type: @investigation_project.investigator_type, project_id: @investigation_project.project_id } }
    assert_redirected_to investigation_project_url(@investigation_project)
  end

  test "should destroy investigation_project" do
    assert_difference('InvestigationProject.count', -1) do
      delete investigation_project_url(@investigation_project)
    end

    assert_redirected_to investigation_projects_url
  end
end
