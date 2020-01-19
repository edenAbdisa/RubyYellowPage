json.extract! contact_org, :id, :contact_id, :organization_name, :email, :p_number, :brief_description, :created_at, :updated_at
json.url contact_org_url(contact_org, format: :json)
