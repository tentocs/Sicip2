require 'test_helper'

class ActivityPendingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_pending = activity_pendings(:one)
  end

  test "should get index" do
    get activity_pendings_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_pending_url
    assert_response :success
  end

  test "should create activity_pending" do
    assert_difference('ActivityPending.count') do
      post activity_pendings_url, params: { activity_pending: { final_report: @activity_pending.final_report, project_id: @activity_pending.project_id, report1: @activity_pending.report1, report2: @activity_pending.report2, report3: @activity_pending.report3 } }
    end

    assert_redirected_to activity_pending_url(ActivityPending.last)
  end

  test "should show activity_pending" do
    get activity_pending_url(@activity_pending)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_pending_url(@activity_pending)
    assert_response :success
  end

  test "should update activity_pending" do
    patch activity_pending_url(@activity_pending), params: { activity_pending: { final_report: @activity_pending.final_report, project_id: @activity_pending.project_id, report1: @activity_pending.report1, report2: @activity_pending.report2, report3: @activity_pending.report3 } }
    assert_redirected_to activity_pending_url(@activity_pending)
  end

  test "should destroy activity_pending" do
    assert_difference('ActivityPending.count', -1) do
      delete activity_pending_url(@activity_pending)
    end

    assert_redirected_to activity_pendings_url
  end
end
