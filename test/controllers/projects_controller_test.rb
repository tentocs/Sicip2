require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { academic_information: @project.academic_information, administrative_information: @project.administrative_information, approval_date: @project.approval_date, category_id: @project.category_id, co_respondible: @project.co_respondible, deanery: @project.deanery, duration: @project.duration, investigation_area_id: @project.investigation_area_id, investigation_line: @project.investigation_line, registration_date: @project.registration_date, research_unit_id: @project.research_unit_id, responsible: @project.responsible, state_id: @project.state_id, title: @project.title } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { academic_information: @project.academic_information, administrative_information: @project.administrative_information, approval_date: @project.approval_date, category_id: @project.category_id, co_respondible: @project.co_respondible, deanery: @project.deanery, duration: @project.duration, investigation_area_id: @project.investigation_area_id, investigation_line: @project.investigation_line, registration_date: @project.registration_date, research_unit_id: @project.research_unit_id, responsible: @project.responsible, state_id: @project.state_id, title: @project.title } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
