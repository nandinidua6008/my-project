class RemovePasswordFromEmployees < ActiveRecord::Migration[5.0]
  def change
    remove_column :employees, :password, :string
  end
end
