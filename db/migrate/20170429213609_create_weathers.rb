class CreateWeathers < ActiveRecord::Migration[5.0]
  def change
    create_table :weathers do |t|
      t.string :link
      t.integer :zip_code

      t.timestamps
    end
  end
end
