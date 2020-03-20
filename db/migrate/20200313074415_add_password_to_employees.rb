class AddPasswordToEmployees < ActiveRecord::Migration[5.0]
  def change
	add_column :employees, :password, :string, after: :state
  end
end
