class Tution < ApplicationRecord
  has_many :teachers, as: :connected_by, dependent: :delete_all
  has_many :subjects, as: :connected_by, dependent: :delete_all
  # validates_uniqueness_of :name, :address
  # after_create_commit :publish
  # before_validation :remove_whitespaces
  validates :name, length: { minimum: 6 }
  after_validation :set_status
 

 



  private
  # def remove_whitespaces
  
  # end

  def set_status
      puts "name is: #{self.name}"
      # self.Tution.delete(id)
      # @tution=Tution.all
      # @tution.map{|name| puts name.name}
      # @name=Tution.name
      # @name.destroy
      # puts "After create it destroyed"
  end

    # def publish
    #   puts 'updating'
    #   update(name: "darshan thakor")
    #   puts 'updated successfully'
    # end

    # def post_on_social_media
    #   puts 'posting on social media'
    # end
end
