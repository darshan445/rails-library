class Subject < ApplicationRecord
    belongs_to :connected_by, polymorphic: true
    belongs_to :teacher
end
