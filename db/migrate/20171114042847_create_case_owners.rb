class CreateCaseOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :case_owners do |t|
      t.string :name

      t.timestamps
    end
  end
end
