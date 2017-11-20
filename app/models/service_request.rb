class ServiceRequest < ApplicationRecord
  belongs_to :issue_type
  belongs_to :case_owner
  belongs_to :location

  def close_with(status:)
    update_attributes!(
      status: status,
      closed_at: Time.current,
      actual_completed_days: (Time.current - created_at).to_i
    )
  end

  def completed?
    status == "CLOSED"
  end

  def goal_met?
    actual_completed_days &&
      goal_days &&
      actual_completed_days <= goal_days
  end
end
