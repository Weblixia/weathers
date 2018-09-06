require "application_system_test_case"

class WeathersTest < ApplicationSystemTestCase
  setup do
    @weather = weathers(:one)
  end

  test "visiting the index" do
    visit weathers_url
    assert_selector "h1", text: "Weathers"
  end

  test "creating a Weather" do
    visit weathers_url
    click_on "New Weather"

    fill_in "Address", with: @weather.address
    fill_in "Gaiyo", with: @weather.gaiyo
    fill_in "Kion", with: @weather.kion
    fill_in "Kosui", with: @weather.kosui
    fill_in "Max", with: @weather.max
    fill_in "Min", with: @weather.min
    fill_in "Nichiji", with: @weather.nichiji
    fill_in "Tenki", with: @weather.tenki
    click_on "Create Weather"

    assert_text "Weather was successfully created"
    click_on "Back"
  end

  test "updating a Weather" do
    visit weathers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @weather.address
    fill_in "Gaiyo", with: @weather.gaiyo
    fill_in "Kion", with: @weather.kion
    fill_in "Kosui", with: @weather.kosui
    fill_in "Max", with: @weather.max
    fill_in "Min", with: @weather.min
    fill_in "Nichiji", with: @weather.nichiji
    fill_in "Tenki", with: @weather.tenki
    click_on "Update Weather"

    assert_text "Weather was successfully updated"
    click_on "Back"
  end

  test "destroying a Weather" do
    visit weathers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weather was successfully destroyed"
  end
end
