class CreateContactOrgs < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_orgs do |t|
       
      t.text :organization_name
      t.string :email
      t.string :p_number
      t.text :brief_description

      t.timestamps
    end
  end


end
