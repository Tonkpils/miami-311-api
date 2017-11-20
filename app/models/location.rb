class Location < ApplicationRecord
  has_many :service_requests
end
