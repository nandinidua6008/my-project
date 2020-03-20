class AddRegistrationToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :registration, :date
  end
end
