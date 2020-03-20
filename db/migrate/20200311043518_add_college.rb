class AddCollege < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :college, :string, after: :age
  end
end
