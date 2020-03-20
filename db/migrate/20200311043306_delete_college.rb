class DeleteCollege < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :college, :string
  end
end
