class Teacher < ApplicationRecord
    belongs_to :connected_by, polymorphic: true
end
