class Subject < ApplicationRecord
    belongs_to :connected_by, polymorphic: true
    has_many :teachers
    has_and_belongs_to_many :students
end
