require "application_system_test_case"

class RyokutyasTest < ApplicationSystemTestCase
  setup do
    @ryokutya = ryokutyas(:one)
  end

  test "visiting the index" do
    visit ryokutyas_url
    assert_selector "h1", text: "Ryokutyas"
  end

  test "creating a Ryokutya" do
    visit ryokutyas_url
    click_on "New Ryokutya"

    click_on "Create Ryokutya"

    assert_text "Ryokutya was successfully created"
    click_on "Back"
  end

  test "updating a Ryokutya" do
    visit ryokutyas_url
    click_on "Edit", match: :first

    click_on "Update Ryokutya"

    assert_text "Ryokutya was successfully updated"
    click_on "Back"
  end

  test "destroying a Ryokutya" do
    visit ryokutyas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ryokutya was successfully destroyed"
  end
end
