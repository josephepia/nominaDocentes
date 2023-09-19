class Permission < ApplicationRecord
    has_and_belongs_to_many :roles
    has_and_belongs_to_many :actions
end
