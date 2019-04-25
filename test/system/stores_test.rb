require "application_system_test_case"

class StoresTest < ApplicationSystemTestCase
  setup do
    @store = stores(:one)
  end

  test "visiting the index" do
    visit stores_url
    assert_selector "h1", text: "Stores"
  end

  test "creating a Store" do
    visit stores_url
    click_on "New Store"

    fill_in "Friday hrs", with: @store.friday_hrs
    fill_in "Monday hrs", with: @store.monday_hrs
    fill_in "Name", with: @store.name
    fill_in "Saturday hrs", with: @store.saturday_hrs
    fill_in "Sunday hrs", with: @store.sunday_hrs
    fill_in "Thursday hrs", with: @store.thursday_hrs
    fill_in "Tuesday hrs", with: @store.tuesday_hrs
    fill_in "Wednesday hrs", with: @store.wednesday_hrs
    click_on "Create Store"

    assert_text "Store was successfully created"
    click_on "Back"
  end

  test "updating a Store" do
    visit stores_url
    click_on "Edit", match: :first

    fill_in "Friday hrs", with: @store.friday_hrs
    fill_in "Monday hrs", with: @store.monday_hrs
    fill_in "Name", with: @store.name
    fill_in "Saturday hrs", with: @store.saturday_hrs
    fill_in "Sunday hrs", with: @store.sunday_hrs
    fill_in "Thursday hrs", with: @store.thursday_hrs
    fill_in "Tuesday hrs", with: @store.tuesday_hrs
    fill_in "Wednesday hrs", with: @store.wednesday_hrs
    click_on "Update Store"

    assert_text "Store was successfully updated"
    click_on "Back"
  end

  test "destroying a Store" do
    visit stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store was successfully destroyed"
  end
end
