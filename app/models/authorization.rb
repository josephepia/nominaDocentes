class Authorization < ApplicationRecord
  belongs_to :user
  belongs_to :resource
  belongs_to :action
end
