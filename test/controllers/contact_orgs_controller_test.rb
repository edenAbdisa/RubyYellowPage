require 'test_helper'

class ContactOrgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_org = contact_orgs(:one)
  end

  test "should get index" do
    get contact_orgs_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_org_url
    assert_response :success
  end

  test "should create contact_org" do
    assert_difference('ContactOrg.count') do
      post contact_orgs_url, params: { contact_org: { brief_description: @contact_org.brief_description, contact_id: @contact_org.contact_id, email: @contact_org.email, organization_name: @contact_org.organization_name, p_number: @contact_org.p_number } }
    end

    assert_redirected_to contact_org_url(ContactOrg.last)
  end

  test "should show contact_org" do
    get contact_org_url(@contact_org)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_org_url(@contact_org)
    assert_response :success
  end

  test "should update contact_org" do
    patch contact_org_url(@contact_org), params: { contact_org: { brief_description: @contact_org.brief_description, contact_id: @contact_org.contact_id, email: @contact_org.email, organization_name: @contact_org.organization_name, p_number: @contact_org.p_number } }
    assert_redirected_to contact_org_url(@contact_org)
  end

  test "should destroy contact_org" do
    assert_difference('ContactOrg.count', -1) do
      delete contact_org_url(@contact_org)
    end

    assert_redirected_to contact_orgs_url
  end
end
