class AddReenterpasswordToEmployees < ActiveRecord::Migration[5.0]
  def change
add_column :employees, :re_enter, :string, after: :password
  end
end
