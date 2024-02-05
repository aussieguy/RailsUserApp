require "application_system_test_case"

class ApikeysTest < ApplicationSystemTestCase
  setup do
    @apikey = apikeys(:one)
  end

  test "visiting the index" do
    visit apikeys_url
    assert_selector "h1", text: "Apikeys"
  end

  test "should create apikey" do
    visit apikeys_url
    click_on "New apikey"

    fill_in "Apikey", with: @apikey.apikey
    fill_in "Provider", with: @apikey.provider
    click_on "Create Apikey"

    assert_text "Apikey was successfully created"
    click_on "Back"
  end

  test "should update Apikey" do
    visit apikey_url(@apikey)
    click_on "Edit this apikey", match: :first

    fill_in "Apikey", with: @apikey.apikey
    fill_in "Provider", with: @apikey.provider
    click_on "Update Apikey"

    assert_text "Apikey was successfully updated"
    click_on "Back"
  end

  test "should destroy Apikey" do
    visit apikey_url(@apikey)
    click_on "Destroy this apikey", match: :first

    assert_text "Apikey was successfully destroyed"
  end
end
