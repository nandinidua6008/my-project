class AddEmailToEmployees < ActiveRecord::Migration[5.0]
  def change
add_column :employees, :email, :string, after: :name
  end
end
