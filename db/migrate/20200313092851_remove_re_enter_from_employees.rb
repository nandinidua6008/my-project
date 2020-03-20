class RemoveReEnterFromEmployees < ActiveRecord::Migration[5.0]
  def change
    remove_column :employees, :re_enter, :string
  end
end
