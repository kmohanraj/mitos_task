class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :place
      t.date :date_of_birth
      t.string :contact_no
      t.string :email
      t.string :designation
      t.string :company_name
      t.string :total_exp
      t.string :place
      t.string :father_name
      t.string :spouse_name
      t.string :mother_name
      t.string :children_name
      t.integer :salary
      t.integer :pf
      t.integer :esic
      t.integer :total_salary

      t.timestamps
    end
  end
end
