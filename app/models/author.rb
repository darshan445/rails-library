class Author < ApplicationRecord
    has_many :books, dependent: :delete_all
    accepts_nested_attributes_for :books

    enum gender: [ :male, :female ]
end
