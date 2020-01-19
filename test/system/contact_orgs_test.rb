require "application_system_test_case"

class ContactOrgsTest < ApplicationSystemTestCase
  setup do
    @contact_org = contact_orgs(:one)
  end

  test "visiting the index" do
    visit contact_orgs_url
    assert_selector "h1", text: "Contact Orgs"
  end

  test "creating a Contact org" do
    visit contact_orgs_url
    click_on "New Contact Org"

    fill_in "Brief description", with: @contact_org.brief_description
    fill_in "Contact", with: @contact_org.contact_id
    fill_in "Email", with: @contact_org.email
    fill_in "Organization name", with: @contact_org.organization_name
    fill_in "P number", with: @contact_org.p_number
    click_on "Create Contact org"

    assert_text "Contact org was successfully created"
    click_on "Back"
  end

  test "updating a Contact org" do
    visit contact_orgs_url
    click_on "Edit", match: :first

    fill_in "Brief description", with: @contact_org.brief_description
    fill_in "Contact", with: @contact_org.contact_id
    fill_in "Email", with: @contact_org.email
    fill_in "Organization name", with: @contact_org.organization_name
    fill_in "P number", with: @contact_org.p_number
    click_on "Update Contact org"

    assert_text "Contact org was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact org" do
    visit contact_orgs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact org was successfully destroyed"
  end
end
