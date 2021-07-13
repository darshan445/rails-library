class Subject < ApplicationRecord
    belongs_to :connected_by, polymorphic: true, required: false
    has_many :teachers
end
