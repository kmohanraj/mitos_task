class CreateHumanResources < ActiveRecord::Migration[5.0]
  def change
    create_table :human_resources do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :place
      t.string :email
      t.string :contact_no
      # t.users :references

      t.timestamps
    end
  end
end
