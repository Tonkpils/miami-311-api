class CaseOwner < ApplicationRecord
  has_many :service_requests
end
