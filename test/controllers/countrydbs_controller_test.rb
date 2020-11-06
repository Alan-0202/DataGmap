require 'test_helper'

class CountrydbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @countrydb = countrydbs(:one)
  end

  test "should get index" do
    get countrydbs_url
    assert_response :success
  end

  test "should get new" do
    get new_countrydb_url
    assert_response :success
  end

  test "should create countrydb" do
    assert_difference('Countrydb.count') do
      post countrydbs_url, params: { countrydb: { carboneight: @countrydb.carboneight, carbonten: @countrydb.carbonten, countryid: @countrydb.countryid, gdpeight: @countrydb.gdpeight, gdpten: @countrydb.gdpten } }
    end

    assert_redirected_to countrydb_url(Countrydb.last)
  end

  test "should show countrydb" do
    get countrydb_url(@countrydb)
    assert_response :success
  end

  test "should get edit" do
    get edit_countrydb_url(@countrydb)
    assert_response :success
  end

  test "should update countrydb" do
    patch countrydb_url(@countrydb), params: { countrydb: { carboneight: @countrydb.carboneight, carbonten: @countrydb.carbonten, countryid: @countrydb.countryid, gdpeight: @countrydb.gdpeight, gdpten: @countrydb.gdpten } }
    assert_redirected_to countrydb_url(@countrydb)
  end

  test "should destroy countrydb" do
    assert_difference('Countrydb.count', -1) do
      delete countrydb_url(@countrydb)
    end

    assert_redirected_to countrydbs_url
  end
end
