require "application_system_test_case"

class CountrydbsTest < ApplicationSystemTestCase
  setup do
    @countrydb = countrydbs(:one)
  end

  test "visiting the index" do
    visit countrydbs_url
    assert_selector "h1", text: "Countrydbs"
  end

  test "creating a Countrydb" do
    visit countrydbs_url
    click_on "New Countrydb"

    fill_in "Carboneight", with: @countrydb.carboneight
    fill_in "Carbonten", with: @countrydb.carbonten
    fill_in "Countryid", with: @countrydb.countryid
    fill_in "Gdpeight", with: @countrydb.gdpeight
    fill_in "Gdpten", with: @countrydb.gdpten
    click_on "Create Countrydb"

    assert_text "Countrydb was successfully created"
    click_on "Back"
  end

  test "updating a Countrydb" do
    visit countrydbs_url
    click_on "Edit", match: :first

    fill_in "Carboneight", with: @countrydb.carboneight
    fill_in "Carbonten", with: @countrydb.carbonten
    fill_in "Countryid", with: @countrydb.countryid
    fill_in "Gdpeight", with: @countrydb.gdpeight
    fill_in "Gdpten", with: @countrydb.gdpten
    click_on "Update Countrydb"

    assert_text "Countrydb was successfully updated"
    click_on "Back"
  end

  test "destroying a Countrydb" do
    visit countrydbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Countrydb was successfully destroyed"
  end
end
