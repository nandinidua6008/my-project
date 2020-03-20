class AddRegistrationDate < ActiveRecord::Migration[5.0]
  def change
  	add_column :patients, :registration_date, :date, after: :disease
  end
end
