require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the home user sees title and flats" do
    visit '/'

    assert_selector "h1", text: "NoDB AirBnB"
    assert_selector ".flat-card", count: 6
  end

  test "visiting a flat show, user sees flat name and price" do
    visit '/flats/201'
    assert_selector "h1", text: "Super 60m2 in trendy neighborhood!"
    assert_selector ".flat-price", text: "150"
  end
end
