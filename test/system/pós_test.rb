require "application_system_test_case"

class PósTest < ApplicationSystemTestCase
  setup do
    @pó = pós(:one)
  end

  test "visiting the index" do
    visit pós_url
    assert_selector "h1", text: "Pós"
  end

  test "creating a Pó" do
    visit pós_url
    click_on "New Pó"

    click_on "Create Pó"

    assert_text "Pó was successfully created"
    click_on "Back"
  end

  test "updating a Pó" do
    visit pós_url
    click_on "Edit", match: :first

    click_on "Update Pó"

    assert_text "Pó was successfully updated"
    click_on "Back"
  end

  test "destroying a Pó" do
    visit pós_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pó was successfully destroyed"
  end
end
