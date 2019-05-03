class Guest < ApplicationRecord
  validates :GUID, :URL, :timestamp, presence: true
end
