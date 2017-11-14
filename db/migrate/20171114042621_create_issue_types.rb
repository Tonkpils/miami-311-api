class CreateIssueTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
