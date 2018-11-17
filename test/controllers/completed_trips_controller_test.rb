require 'test_helper'

class CompletedTripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @completed_trip = completed_trips(:one)
  end

  test "should get index" do
    get completed_trips_url
    assert_response :success
  end

  test "should get new" do
    get new_completed_trip_url
    assert_response :success
  end

  test "should create completed_trip" do
    assert_difference('CompletedTrip.count') do
      post completed_trips_url, params: { completed_trip: {  } }
    end

    assert_redirected_to completed_trip_url(CompletedTrip.last)
  end

  test "should show completed_trip" do
    get completed_trip_url(@completed_trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_completed_trip_url(@completed_trip)
    assert_response :success
  end

  test "should update completed_trip" do
    patch completed_trip_url(@completed_trip), params: { completed_trip: {  } }
    assert_redirected_to completed_trip_url(@completed_trip)
  end

  test "should destroy completed_trip" do
    assert_difference('CompletedTrip.count', -1) do
      delete completed_trip_url(@completed_trip)
    end

    assert_redirected_to completed_trips_url
  end
end
