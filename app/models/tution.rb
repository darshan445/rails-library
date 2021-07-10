class Tution < ApplicationRecord
  has_many :teachers, as: :connected_by, dependent: :delete_all
  has_many :subjects, as: :connected_by, dependent: :delete_all
  # validates_uniqueness_of :name, :address

  validates :name, :address, presence: true

  before_validation :ensure_name_and_address_has_a_value

  private
    
    # def  ensure_name_and_address_has_a_value
    #   if name.nil?
    #     self.name = address unless address.blank?
    #   end
    # end

    # before_create do
    #   self.name = login.capitalize if name.blank?
    # end
end
