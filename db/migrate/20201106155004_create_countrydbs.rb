class CreateCountrydbs < ActiveRecord::Migration[6.0]
  def change
    create_table :countrydbs do |t|
      t.string :countryid
      t.float :carbonten
      t.float :carboneight
      t.float :gdpten
      t.float :gdpeight

      t.timestamps
    end
  end
end
