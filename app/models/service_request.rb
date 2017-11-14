class ServiceRequest < ApplicationRecord
  belongs_to :issue_type
  belongs_to :case_owner
  belongs_to :location
end
