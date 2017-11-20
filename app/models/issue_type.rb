class IssueType < ApplicationRecord
  has_many :service_requests
end
