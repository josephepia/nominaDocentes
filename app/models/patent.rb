class Patent < ApplicationRecord
  belongs_to :patenttype
  belongs_to :user
end
