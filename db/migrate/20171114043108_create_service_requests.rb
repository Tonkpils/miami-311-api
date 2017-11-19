class CreateServiceRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :service_requests do |t|
      t.string :ticket_id
      t.references :issue_type, foreign_key: true
      t.references :case_owner, foreign_key: true
      t.references :location, foreign_key: true
      t.timestamp :closed_at
      t.string :status
      t.string :method_received
      t.integer :goal_days
      t.integer :actual_completed_days

      t.timestamps
    end
  end
end
