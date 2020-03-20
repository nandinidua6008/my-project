class Addpasswordtoemployees < ActiveRecord::Migration[5.0]
  def change
add_column :employees, :password, :string, after: :email
  end
end
