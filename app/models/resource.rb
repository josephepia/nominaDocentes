class Resource < ApplicationRecord
    has_and_belongs_to_many :actions
end
