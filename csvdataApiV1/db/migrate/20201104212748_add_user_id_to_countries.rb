class AddUserIdToCountries < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :user_id, :integer
  end
end
