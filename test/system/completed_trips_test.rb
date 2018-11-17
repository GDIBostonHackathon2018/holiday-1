require "application_system_test_case"

class CompletedTripsTest < ApplicationSystemTestCase
  setup do
    @completed_trip = completed_trips(:one)
  end

  test "visiting the index" do
    visit completed_trips_url
    assert_selector "h1", text: "Completed Trips"
  end

  test "creating a Completed trip" do
    visit completed_trips_url
    click_on "New Completed Trip"

    click_on "Create Completed trip"

    assert_text "Completed trip was successfully created"
    click_on "Back"
  end

  test "updating a Completed trip" do
    visit completed_trips_url
    click_on "Edit", match: :first

    click_on "Update Completed trip"

    assert_text "Completed trip was successfully updated"
    click_on "Back"
  end

  test "destroying a Completed trip" do
    visit completed_trips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Completed trip was successfully destroyed"
  end
end
