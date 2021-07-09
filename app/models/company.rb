class Company < ApplicationRecord
    has_and_belongs_to_many :projects
    accepts_nested_attributes_for :projects
end
