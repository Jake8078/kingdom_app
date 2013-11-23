class CreateCitizens < ActiveRecord::Migration
  def change
    create_table :citizens do |t|
      t.string :name
      t.string :birthdate
      t.string :father
      t.string :mother
      t.string :profession

      t.timestamps
    end
  end
end
