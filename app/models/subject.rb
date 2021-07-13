class Subject < ApplicationRecord
    belongs_to :connected_by, polymorphic: true
    has_many :teachers
end
