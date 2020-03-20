class AddAgeToEmployees < ActiveRecord::Migration[5.0]
  def change
add_column :employees, :age, :integer
  end
end
