class RemoveRegistrationFromPatients < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :registration, :date
  end
end
