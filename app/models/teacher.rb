class Teacher < ApplicationRecord
    belongs_to :connected_by, polymorphic: true, required: false
		has_many :subjects
    # after_create :randomize_id
    before_create :assign_tution

	private
	def randomize_id
  	puts Tution.all.sample
  	update(connected_by: Tution.all.sample)    
  	puts "Updated"
	end

	def assign_tution
		self.connected_by = Tution.all.sample
	end
end


   