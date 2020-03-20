class ChangeAgeToBeDate < ActiveRecord::Migration[5.0]
   def up
    change_column :patients, :phone, :long
  end

  def down
    change_column :patients, :phone, :integer
  end
end
