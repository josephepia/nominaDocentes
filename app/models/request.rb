class Request < ApplicationRecord
  belongs_to :vacant
  belongs_to :user
end
