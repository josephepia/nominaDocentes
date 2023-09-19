class Action < ApplicationRecord
    has_and_belongs_to_many :resources
    has_and_belongs_to_many :permissions
end
