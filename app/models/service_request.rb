class ServiceRequest < ApplicationRecord
  belongs_to :issue_type
  belongs_to :case_owner
  belongs_to :location

  def completed?
    status == "CLOSED"
  end

  def goal_met?
    actual_completed_days &&
      goal_days &&
      actual_completed_days <= goal_days
  end
end
